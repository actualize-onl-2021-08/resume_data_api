# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
25.times do
  # student creator
  student = Student.new(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    phone_number: Faker::Number.number(digits: 10).to_s,
    bio: Faker::Lorem.sentence(word_count: 15, random_words_to_add: 0),
    password: "password"
  )
  student.save
  first = student.first_name.downcase
  last = student.last_name.downcase
  full = first + last
  student.update(
    photo: "https://unsplash.com/photos/#{full}",
    email: "#{full}@gmail.com", 
    linkedin_url: "https://www.linkedin.com/in/#{first}-#{last}/",
    twitter_handle: "https://twitter.com/#{full}",
    website_url: "#{full}.github.io",
    resume_url: "#{full}.resume.com",
    github_url: "github.com/#{full}",
  )

  # education creator
  education = Education.new(
    student_id: student.id,
    start_date: Faker::Date.between(from: '2000-01-01', to: '2017-12-31'),
    degree: Faker::Educator.degree,
    university_name: Faker::Educator.university,
    details: Faker::Lorem.sentence,
  )
  education.save
  education.update(
    end_date: education.start_date + (365*4),
  )

  #experience creator
  experience = Experience.new(
    student_id: student.id,
    start_date: Faker::Date.between(from: '2000-01-01', to: '2010-12-31'),
    end_date: Faker::Date.between(from: '2011-01-01', to: Date.today),
    job_title: Faker::Company.profession,
    company_name: Faker::Company.name,
    details: Faker::Company.bs,
  )
  experience.save

  #skill creator
  x = rand(3...5)
  x.times do
    skill = Skill.new(
      student_id: student.id,
      skill_name: Faker::ProgrammingLanguage.unique.name,
    )
    skill.save
  end

  # capstone creator
  capstone = Capstone.new(
    student_id: student.id,
    name: Faker::App.unique.name,
    description: Faker::Lorem.sentence(word_count: 15, random_words_to_add: 0),
  )
  capstone.save
  capstone.update(
    url: "#{capstone.name}.com",
    screenshot: "#{capstone.name}.com/screenshot.jpg",
  )
end