# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

airlines = Airline.create([
    {
        name: "United Airlines",
        image_url: "https://1000logos.net/wp-content/uploads/2017/06/United-Airlines-Logo.png"
    },
    {
        name: "Air France",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Air_France_Logo.svg/2560px-Air_France_Logo.svg.png"
    },
    {
        name: "British Airways",
        image_url: "https://1000logos.net/wp-content/uploads/2016/10/British-Airways-Logo.png"
    },
    {
        name: "EL AL",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Logo_of_El_Al_Israel_Airlines.svg/2759px-Logo_of_El_Al_Israel_Airlines.svg.png"
    }
])

reviews = Review.create([
    {
        title: 'Great airline',
        description: 'Had a lovely time',
        score: 5,
        airline: airlines.first
    },
    {
        title: "Bad airline",
        description: "Had a bad time",
        score: 1,
        airline: airlines.first
    }
])