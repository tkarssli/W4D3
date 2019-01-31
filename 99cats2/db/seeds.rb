# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  user1 = User.create(user_name: 'cheese', password: 'password')
  user2 = User.create(user_name: 'geese', password: 'password')

  cat1 = Cat.create(name: 'cats', birth_date: '2015/1/1', color: 'brown', sex: 'F', description: 'description', user_id: user1.id)
  cat1 = Cat.create(name: 'catter', birth_date: '2015/1/1', color: 'orange', sex: 'M', description: 'description', user_id: user2.id)

  cat_rental_request1 = CatRentalRequest.create(cat_id: cat1.id, end_date: '2019/1/1', start_date: '2018/2/2', status: 'PENDING', user_id: user2.id)

end

# cat_id     :integer          not null
#  end_date   :date             not null
#  start_date :date             not null
#  status     :string   