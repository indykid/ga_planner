# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Booking.destroy_all

Course.destroy_all

User.destroy_all

Enrollment.destroy_all

Classroom.destroy_all


users = User.create ([
  {  name: 'James',
      age: '24',
      bio: 'nice guy',
      role: 'instructor',
      email: 'jameswillock@gmail.com',
      password: 'james',
      photo: 'http://placekitten.com/200/300'},

  {  name: 'Michael',
      age: '35',
      bio: 'likes martial arts',
      role: 'instructor',
      email: 'michaelpavling@gmail.com',
      password: 'michael',
      photo: 'http://placekitten.com/200/300'},

  {  name: 'Gordon',
      age: '29',
      bio: 'likes to cycle',
      role: 'admin',
      email: 'gordon@generalassemb.ly',
      password: 'gordon',
      photo: 'http://placekitten.com/200/300'}, 

  {  name: 'Britney Jo',
      age: '24',
      bio: 'travelled the world',
      role: 'student',
      email: 'britney@gmail.com',
      password: 'britney',
      photo: 'http://placekitten.com/200/300'},

  {  name: 'Luke',
      age: '30',
      bio: 'travelled the world',
      role: 'student',
      email: 'luke@gmail.com',
      password: 'luke',
      photo: 'http://placekitten.com/200/300'},

  {  name: 'Anna',
      age: '27',
      bio: 'misses Italy',
      role: 'student',
      email: 'anna@gmail.com',
      password: 'anna',
      photo: 'http://placekitten.com/200/300'},

      {  name: 'Bart',
      age: '30',
      bio: 'has yellow hair',
      role: 'student',
      email: 'bart@bart.com',
      password: 'bart',
      photo: 'http://placekitten.com/200/300'},

  ])
