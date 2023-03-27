# db/seeds.rb
user1 = User.create(name: "John", email: "john@example.com", password_digest: "password", phone: "+254712345678", id_number: "12345678")
user2 = User.create(name: "Jane", email: "jane@example.com", password_digest: "password", phone: "+254712345679", id_number: "12345679")

transaction1 = Transaction.create(user: user1, amount: 1000)
transaction2 = Transaction.create(user: user2, amount: 2000)

contribution1 = Contribution.create(user: user1, year: 2022, month: 3, amount: 1000)
contribution2 = Contribution.create(user: user2, year: 2022, month: 3, amount: 2000)
