# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


some_date = 1.days.ago

userList = [
  [ "cj_001", "password", "$#%4sbgfb$#%", "CJ", "Morrison", "Administator", some_date ]
]


userList.each do |username, password, salt, firstName, lastName, role, timestamp|
    ClockUser.create(
        username: username,
        password: password,
        salt: salt,
        firstName: firstName,
        lastName:lastName,
        role: role,
        timestamps: timestamp
      )
end
