
puts "--seeds--"

###dont push destroy_all to heroku
# if User.all.count > 0
#   User.destroy_all
# end
#
# if Caregiver.all.count > 0
#   Caregiver.destroy_all
# end
#
# if Specialty.all.count > 0
#   Specialty.destroy_all
# end
#
# if CaregiverSpecialty.all.count > 0
#   CaregiverSpecialty.destroy_all
# end

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
  },
  {
    first_name: "Switt",
    last_name: "Ross",
    email: "switt@ross.com",
    password_digest: "$2a$10$8GdTLVtPHfriKgA9uLYvbe7VJuhf0iqf1PCignQd1JjDBBGPkyQry",
    patient: false
  },
  {
    first_name: "Aaron",
    last_name: "Ross",
    email: "aaron@ross.com",
    password_digest: "$2a$10$qrQHrsZtWevi6M5iFzLcOOvbzL7Ge6C3Q/3MaV/VjzJTfCuTvT1Yy",
    patient: false
  },
  {
    first_name: "Tiff",
    last_name: "Ross",
    email: "tiff@ross.com",
    password_digest: "$2a$10$cIWrR0uADVvOPMsIv47ARep7/h0OGbYvmMzB5BFLJO3JvM7kTOZqu",
    patient: false
  },
  {
    first_name: "Jim",
    last_name: "Ross",
    email: "jim@ross.com",
    password_digest: "$2a$10$KfjkqsXY6tX7AKKAZZ1kNewFL2mL61UJky7BL0ccwkNC3.TBa2G9e",
    patient: false
  },
  {
    first_name: "Rick",
    last_name: "Ross",
    email: "rick@ross.com",
    password_digest: "$2a$10$4K4XG4UdhCatyXyRlg4As.K1.kY0FknNSsLyq8v0ET3hHSkTHMPBK",
    patient: false
  },
  {
    first_name: "Yay",
    last_name: "Ross",
    email: "yay@ross.com",
    password_digest: "$2a$10$e2nTS7e63FIiLPxYr/QTueWE/SjQqmBRL31N2UGAUkbiwjtuyb.Yq",
    patient: false
  },
  {
    first_name: "Dave",
    last_name: "Ross",
    email: "dave@ross.com",
    password_digest: "$2a$10$EWbbXFGkZivl4UjEXXW4EO/ZAOsmqnV3Pqaq.AjoJvnh.7mPYVGJq",
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
    location: "Downtown San Mateo",
    credentials: "That's why I paint - because I can create the kind of world I want - and I can make this world as happy as I want it. You don't have to spend all your time thinking about what you're doing, you just let it happen.",
    user_id: 2
  },
  {
    experience: "Didn't you know you had that much power? You can move mountains. You can do anything. If what you're doing doesn't make you happy - you're doing the wrong thing. We're not trying to teach you a thing to copy. ",
    location: "Downtown San Jose",
    credentials: "We're just here to teach you a technique, then let you loose into the world. Making all those little fluffies that live in the clouds. Here's something that's fun. If we're going to have animals around we all have to be concerned about them and take care of them.",
    user_id: 3
  },
  {
    experience: "I want everbody to be happy. That's what it's all about. This painting comes right out of your heart. And just raise cain.",
    location: "San Diego",
    credentials: "Now we'll take the almighty fan brush. I started painting as a hobby when I was little. I didn't know I had any talent. I believe talent is just a pursued interest. Anybody can do what I do. If you hypnotize it, it will go away. We'll do another happy little painting. Put your feelings into it, your heart, it's your world. Paint anything you want on the canvas. Create your own world.",
    user_id: 4
  },
  {
    experience: "Everything's not great in life, but we can still find beauty in it. You have freedom here. The only guide is your heart. It's a good way of getting rid of all your anxieties and hostilities. Nothing wrong with washing your brush. ",
    location: "San Francisco",
    credentials: "That's why I paint - because I can create the kind of world I want - and I can make this world as happy as I want it. You don't have to spend all your time thinking about what you're doing, you just let it happen.",
    user_id: 5
  },
  {
    experience: "Didn't you know you had that much power? You can move mountains. You can do anything. If what you're doing doesn't make you happy - you're doing the wrong thing. We're not trying to teach you a thing to copy. ",
    location: "Burlingame",
    credentials: "We're just here to teach you a technique, then let you loose into the world. Making all those little fluffies that live in the clouds. Here's something that's fun. If we're going to have animals around we all have to be concerned about them and take care of them.",
    user_id: 6
  },
  {
    experience: "I want everbody to be happy. That's what it's all about. This painting comes right out of your heart. And just raise cain.",
    location: "Daly City",
    credentials: "Now we'll take the almighty fan brush. I started painting as a hobby when I was little. I didn't know I had any talent. I believe talent is just a pursued interest. Anybody can do what I do. If you hypnotize it, it will go away. We'll do another happy little painting. Put your feelings into it, your heart, it's your world. Paint anything you want on the canvas. Create your own world.",
    user_id: 7
  },
  {
    experience: "Everything's not great in life, but we can still find beauty in it. You have freedom here. The only guide is your heart. It's a good way of getting rid of all your anxieties and hostilities. Nothing wrong with washing your brush. ",
    location: "Burlingame",
    credentials: "That's why I paint - because I can create the kind of world I want - and I can make this world as happy as I want it. You don't have to spend all your time thinking about what you're doing, you just let it happen.",
    user_id: 8
  },
  {
    experience: "Didn't you know you had that much power? You can move mountains. You can do anything. If what you're doing doesn't make you happy - you're doing the wrong thing. We're not trying to teach you a thing to copy. ",
    location: "Nob Hill, San Francisco",
    credentials: "We're just here to teach you a technique, then let you loose into the world. Making all those little fluffies that live in the clouds. Here's something that's fun. If we're going to have animals around we all have to be concerned about them and take care of them.",
    user_id: 9
  },
  {
    experience: "Didn't you know you had that much power? You can move mountains. You can do anything. If what you're doing doesn't make you happy - you're doing the wrong thing. We're not trying to teach you a thing to copy. ",
    location: "Pac Heights, San Francisco",
    credentials: "We're just here to teach you a technique, then let you loose into the world. Making all those little fluffies that live in the clouds. Here's something that's fun. If we're going to have animals around we all have to be concerned about them and take care of them.",
    user_id: 10
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
    caregiver_id: 4
  },
  {
    specialty_id: 5,
    caregiver_id: 5
  },
  {
    specialty_id: 6,
    caregiver_id: 6
  },
  {
    specialty_id: 7,
    caregiver_id: 7
  },
  {
    specialty_id: 8,
    caregiver_id: 8
  }
]


User.create(users_list)
Caregiver.create(caregivers_list)
Specialty.create(specialties_list)
CaregiverSpecialty.create(caregiver_specialties_list)
