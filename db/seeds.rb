# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

juliet = Applicant.find_or_create_by(name: "Juliet Burke")
dharma_initiative = Company.find_or_create_by(name: "Dharma Initiative")
fertility_doctor = dharma_initiative.jobs.find_or_create_by(title: "Fertility Doctor") do |job|
  job.salary = "150,000"
  job.location = "Portland"
end
juliet_application = JobApplicant.find_or_create_by(applicant: juliet, job: fertility_doctor)

# As a user running seeds for the second time, if the ferility doctor salary changes, my environment should update the existing record with the new salary.
