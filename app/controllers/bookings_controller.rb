class BookingsController < ApplicationController

  load_and_authorize_resource
  

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookings }
    end
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
    @booking = Booking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booking }
    end
  end

  # GET /bookings/new
  # GET /bookings/new.json
  def new
    @booking = Booking.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @booking }
    end
  end

  # GET /bookings/1/edit
  def edit
    @booking = Booking.find(params[:id])
  end

  # POST /bookings
  # POST /bookings.json
  def create

    @course = Course.find params[:booking][:course_id]

    @classroom = Classroom.find params[:booking][:classroom_id]
    @start = @course.start_date
    @end = @course.end_date
    @timeslot = params[:booking][:b_time]
 

    @days_of_week = params[:days_of_week]

    if @days_of_week.nil?
     render action: 'new', notice: 'please select at least one day'
    end

    @course_days = (@course.start_date..@course.end_date).to_a.map do |day|
       if @days_of_week.include? day.strftime('%A')
        day 
       end
      end.compact

      book_array = []
      @course_days.each do |d|
        if Booking.where('classroom_id = ? AND b_date = ? AND (b_time = ? OR b_time = ?)', @classroom.id, d.to_date, @timeslot, 'Day').count > 0
          redirect_to new_booking_path, notice: "this classroom is not available on #{d}" and return
        else 
          book_array << Booking.new(classroom_id: @classroom.id, course_id: @course.id, b_date: d)
        end
      end
      book_array.each do |b|
          b.save
        end
        
      redirect_to @course

      end

   # @booking = Booking.new(params[:booking])

    # respond_to do |format|
    #   if @booking.save
    #     format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
    #     format.json { render json: @booking, status: :created, location: @booking }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @booking.errors, status: :unprocessable_entity }
    #   end
    # end
  

  # PUT /bookings/1
  # PUT /bookings/1.json
  def update
    @booking = Booking.find(params[:id])

    respond_to do |format|
      if @booking.update_attributes(params[:booking])
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to bookings_url }
      format.json { head :no_content }
    end
  end
end
