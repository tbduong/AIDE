# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "--seeds--"

User.destroy_all

Caregiver.destroy_all

users_list = [
  {
    first_name: "Bob",
    last_name: "Ross",
    email: "bob@ross.com",
    password_digest: "$2a$10$0enq72ks/rTZWhJOq4piN.F8T9Y1NOajcOkBRlNNG0k149kKxEPNa",
    patient: false
  },
  {
    first_name: "Don",
    last_name: "Ross",
    email: "don@ross.com",
    password_digest: "$2a$10$8lq8ASwU0Pj4YeChB5PxM.fXWSPxG/tf7Yd2XfxRtHknRZy4WtmJS",
    patient: false
  },
  {
    first_name: "Rob",
    last_name: "Ross",
    email: "rob@ross.com",
    password_digest: "$2a$10$Gwqy.OkzIAoUpN9gxvh2oOPxeztNYah3q1iUI9GG2mqyGKU6mVtQi",
    patient: false
  }
]

caregivers_list = [
  {
    experience: "I am experienced",
    location: "Downtown San Francisco",
    user_id: 1,
    specialty: "Alzheimer's & Dementia"
  },
  {
    experience: "I am experienced",
    location: "Downtown San Francisco",
    user_id: 2,
    specialty: "Pediatric Care"
  },
  {
    experience: "I am experienced",
    location: "Downtown San Francisco",
    user_id: 3,
    specialty: "Geriatric Care"
  }
]


User.create(users_list)
Caregiver.create(caregivers_list)
