# README

bundle install => installs gems, updates Gemfile.lock
rails db:setup => setups the database with 123 elements
rails server => runs server, makes app available on local host
rspec spec -fdoc => runs tests

the root of our app has a search bar. You can search by a name or a description

1. GET "/" => processed by ProductsController#index, renders index.html.erb
2. GET "/products/new" => processed by ProductsController#new, renders new.html.erb.
3. POST "/products" => processed by ProductsController#create, saves to the database if product.valid?
4. GET "/products/143" => processed by ProductsController#show, renders show.html.erb
5. GET "/products/143/edit" => processed by ProductsController#edit, renders edit.html.erb
6. PATCH "/products/143" => processed by ProductsController#update, updates attributes of the product, redirects using GET "/products/143" that is processed by ProductsController#show that renders show view
7. DELETE "/products/1" => processed by ProductsController#destroy, finds an appropriate product by id and deletes it from the database, redirects using GET "/products" that is processed by ProductsController#index that renders index.html.erb
8. GET "/products?utf8=%E2%9C%93&search=Bicycle" => search request processed by ProductsController#index, renders index.html.erb with appropriate products found in database
