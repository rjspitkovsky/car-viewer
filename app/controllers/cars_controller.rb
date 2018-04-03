class CarsController < ApplicationController

  get '/cars' do
    if !logged_in?
      redirect '/login'
    else
      @user = current_user
      @cars = Car.all
      erb :'cars/cars'
    end
  end 

end
