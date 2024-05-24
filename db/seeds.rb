
User.destroy_all
Destination.destroy_all
Booking.destroy_all

user1 = User.create(username: "Smithy", fullname: "Smith Coal", email: "smith@smith.com", password_digest: "haclkdacd737758")
user2 = User.create(username: "Snoopy", fullname: "Tim Snoop", email: "tim@tim.com", password_digest: "lnkdsjhjds73jmds")
user3 = User.create(username: "Mikey", fullname: "Mike Toney", email: "mike@mike.com", password_digest: ",dnjsc8y8ei2ek")

destination1 = Destination.create(title: "Maasai Mara Park", image_url: "https://i.ibb.co/HNr28ct/image-3-750x450.jpg",site_url: "https://www.maasaimara.com/", description: "White sandy beaches.", user_id:1)
destination1 = Destination.create(title: "Tsavo-East  Park", image_url: "https://webunwto.s3.eu-west-1.amazonaws.com/2019-10/why-wildlife.jpg",site_url: "https://www.maasaimara.com/", description: "White sandy beaches.",user_id:2)
destination1 = Destination.create(title: "Amboseli Park", image_url: "https://i.ibb.co/NV9SRtv/shutterstock-140574238.jpg",site_url: "https://www.maasaimara.com/", description: "White sandy beaches.",user_id:1)



Booking.create(fullname: "Smith Coal", destination_name: "Nyeri",date: "06-11-2022")
Booking.create(fullname: "Tim Snoop", destination_name: "Mombasa",date: "06-11-2022")
Booking.create(fullname: "Mike Toney", destination_name: "Nakuru",date: "06-11-2022")
