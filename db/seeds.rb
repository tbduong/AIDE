# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "--seeds--"

if User.all.count > 0
  User.destroy_all
end

if Caregiver.all.count > 0
  Caregiver.destroy_all
end

if Specialty.all.count > 0
  Specialty.destroy_all
end

if CaregiverSpecialty.all.count > 0
  CaregiverSpecialty.destroy_all
end

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
    experience: "I want everbody to be happy. That's what it's all about. This painting comes right out of your heart. And just raise cain.",
    location: "Downtown San Francisco",
    credentials: "Now we'll take the almighty fan brush. I started painting as a hobby when I was little. I didn't know I had any talent. I believe talent is just a pursued interest. Anybody can do what I do. If you hypnotize it, it will go away. We'll do another happy little painting. Put your feelings into it, your heart, it's your world. Paint anything you want on the canvas. Create your own world.",
    user_id: 1
  },
  {
    experience: "Everything's not great in life, but we can still find beauty in it. You have freedom here. The only guide is your heart. It's a good way of getting rid of all your anxieties and hostilities. Nothing wrong with washing your brush. ",
    location: "Downtown San Francisco",
    credentials: "That's why I paint - because I can create the kind of world I want - and I can make this world as happy as I want it. You don't have to spend all your time thinking about what you're doing, you just let it happen.",
    user_id: 2
  },
  {
    experience: "Didn't you know you had that much power? You can move mountains. You can do anything. If what you're doing doesn't make you happy - you're doing the wrong thing. We're not trying to teach you a thing to copy. ",
    location: "Downtown San Francisco",
    credentials: "We're just here to teach you a technique, then let you loose into the world. Making all those little fluffies that live in the clouds. Here's something that's fun. If we're going to have animals around we all have to be concerned about them and take care of them.",
    user_id: 3
  }
]

specialties_list = [
  {
    skill: "Alzheimer's & Dementia"
  },
  {
    skill: "Orthopedic"
  },
  {
    skill: "Wound Care"
  },
  {
    skill: "Oncology Care"
  },
  {
    skill: "Geriatric Care"
  },
  {
    skill: "Pediatric Care"
  },
  {
    skill: "Post Surgical"
  },
  {
    skill: "Neurological Care"
  }
]

caregiver_specialties_list = [
  {
    specialty_id: 1,
    caregiver_id: 1
  },
  {
    specialty_id: 2,
    caregiver_id: 2
  },
  {
    specialty_id: 3,
    caregiver_id: 3
  },
  {
    specialty_id: 4,
    caregiver_id: 1
  },
  {
    specialty_id: 5,
    caregiver_id: 2
  },
  {
    specialty_id: 6,
    caregiver_id: 3
  },
  {
    specialty_id: 7,
    caregiver_id: 1
  },
  {
    specialty_id: 8,
    caregiver_id: 2
  },
]


User.create(users_list)
Caregiver.create(caregivers_list)
Specialty.create(specialties_list)
CaregiverSpecialty.create(caregiver_specialties_list)
