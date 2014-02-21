# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin_user = User.create({ :username => 'admin', :password_hash => Digest::SHA256.hexdigest('admin'), :first_name => 'Haris', :last_name => 'Krajina' })


Trainer.create({
    :first_name => 'Haris',
    :last_name => 'Krajina',
    :header => 'Zumba Personal Trainer',
    :description => 'Worked with gym clients, completing assessments for new clients, creating and implementing training and nutrition schedules. Assisted members in setting goals, maintained database for progress. Organized group workouts for members that included aerobic and weight training routines. Coordinated and organized marketing and special events to promote gym and personal training services.',
    :user => admin_user,
    :hour_price => 15
  })

Trainer.create({
    :first_name => 'Dario',
    :last_name => 'Duvnjak',
    :header => 'Bodybuilding Personal Trainer',
    :description => 'Consulted with clients at a wide range of gyms and fitness centers that contract out personal training services. Responsible to build clientele and retain existing business. Develop and organize fitness programs and training routines, keep records for each entity separate for accurate billing. Maintain good rapport and relationship with management of contracting entity to ensure continued use of muscles.',
    :user => admin_user,
    :hour_price => 6.5
  })
