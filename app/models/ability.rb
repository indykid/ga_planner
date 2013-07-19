class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role? 'admin'
      can [:manage], :all
    end
    if user.role?('student') || user.role?('instructor')
      can [:read, :update], User, id: user.id
      can :manage, Enrollment, user_id: user.id      
      can [:read, :enroll], Course
      can :read, Classroom
      can :read, Booking
    end
    if user.role? 'instructor'
      can :manage, Booking
    end
    if user.role? nil
      can :read, Course
      can :read, Booking
      can :create, User
    end
  end


 end
