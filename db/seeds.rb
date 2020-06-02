# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Test User #1", email: "test1@test.com")
user2 = User.create(name: "Test User #2", email: "test2@test.com")

event1 = Event.create(name: "droidcon NYC")
event2 = Event.create(name: "droidcon SF")

user_event1 = UserEvent.create(user_id: 5, event_id: 2)
user_event2 = UserEvent.create(user_id: 6, event_id: 5)
user_event3 = UserEvent.create(user_id: 5, event_id: 1)

