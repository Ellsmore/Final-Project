User.destroy_all

User.create(:name => 'Admin', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'true')


# ----- USERS ------ #
User.create(:name => 'user', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user2', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user3', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user4', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user5', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user6', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user7', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user8', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user9', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user10', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user11', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')

User.create(:name => 'user12', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')


Product.destroy_all

Product.create(:title=>"Product 1", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Product.create(:title=>"Product 2", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Product.create(:title=>"Product 3", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Product.create(:title=>"Product 4", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"0.05", :image=>"test.jpg")

Product.create(:title=>"Product 5", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Product.create(:title=>"Product 6", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Order.destroy_all

Order.create(:name=> 'user111', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user112', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user113', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user114', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user115', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user116', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user117', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user118', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user119', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user1110', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user1111', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')

Order.create(:name=> 'user1112', :address=> '2 test rd, testville', :email => 'test@test.com', :pay_type => 'credit card')
