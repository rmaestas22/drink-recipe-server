class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # USERS
  ## Create new user
  post "/users" do
    user = User.create(name: params[:name], email: params[:email])
    user.to_json
  end

  ## Read all users
  get "/users" do
    users = User.all
    users.to_json
  end

  ## Read specific user
  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end


  ################################


  # DRINKS
  ## Create new drink
  post "/drinks" do
    drink = Drink.create(drink_name: params[:drink_name], ingredients: params[:ingredients], instructions: params[:instructions], rating: params[:rating], image_url: params[:image_url], user_id: params[:user_id])
    drink.to_json
  end

  ## Read all drinks
  get "/drinks" do
    drinks = Drink.all
    drinks.to_json
  end

  ## Read specific drink
  get "/drinks/:id" do
    drink = Drink.find(params[:id])
    drink.to_json
  end

  ## Update drink
  patch "/drinks/:id" do
    drink = Drink.find(params[:id])
    drink.update(drink_name: params[:drink_name], ingredients: params[:ingredients], instructions: params[:instructions], rating: params[:rating], image_url: params[:image_url], user_id: params[:user_id])
    drink.to_json
  end

  ## Delete drink
  delete "/drinks/:id" do
    drink = Drink.find(params[:id])
    drink.destroy
    drink.to_json
  end

end
