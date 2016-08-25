User.destroy_all

User.create(:name => 'Admin', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'true')

User.create(:name => 'user', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false')


Product.destroy_all

Product.create(:title=>"Product 1", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Product.create(:title=>"Product 2", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Product.create(:title=>"Product 3", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Product.create(:title=>"Product 4", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"0.05", :image=>"test.jpg")

Product.create(:title=>"Product 5", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")

Product.create(:title=>"Product 6", :description=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :price=>"12.95", :image=>"test.jpg")
