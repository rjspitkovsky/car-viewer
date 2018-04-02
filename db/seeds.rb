user1 = User.create(:username => "Tommyboy", :email => "carlover@gmail.com", :password => "unhackable")
car1 = Car.create(:manufacturer => "Mazda", :condition => "awesome", :value => 10000, :year => 2010, :user_id => user1.id)
car2 = Car.create(manufacturer: "Honda", condition: "spotless", value: 18000, year: 2016, user_id: user1.id)

user2 = User.create(username: "DickieV", email: "dickisslangforrichard@gmail.com", password: "trickydicky")
car3 = Car.create(manufacturer: "BMW", condition: "good", value: 50000, year: 2012, user_id: user2.id)
car4 = Car.create(manufacturer: "Lexus", condition: "banged up", value: 15000, year: 2000, user_id: user2.id)

user3 = User.create(username: "HarryandSally", email: "ripprince@msn.com", password: "hipdad")
car5 = Car.create(manufacturer: "Fiat", condition: "great", value: 30000, year: 2017, user_id: user3.id)
car6 = Car.create(manufacturer: "Mazda", condition: "awesome", value: 10000, year: 2010, user_id: user3.id)

user4 = User.create(username: "becky567", email: "carchick@aol.com", password: "password")
car7 = Car.create(manufacturer: "Jeep", condition: "rugged", value: 18000, year: 2012, user_id: user4.id)
car8 = Car.create(manufacturer: "Toyota", condition: "terrible", value: 2000, year: 1999, user_id: user4.id)


user5 = User.create(username: "TheDonald", email: "bestemailever@usa.gov", password: "POTUS")
car9 = Car.create(manufacturer: "Maserati", condition: "greatest. car. ever.", value: 1000000, year: 2018, user_id: user5.id)
