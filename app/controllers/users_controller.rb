class UsersController < ApplicationController
    
    get '/signup' do
        if session[:user_id] #If session[:user_id] exists, then we know that the user has already created a session hash by either signing up or logging in.
          redirect "/users/#{session[:user_id]}"
        end
        erb :'users/signup'
      end
    
      post '/signup' do
        new_user = User.create(params[:user])
        if new_user.id
          session[:user_id] = new_user.id
          redirect "/users/#{new_user.id}"
        else
          @errors = new_user.errors.full_messages #This method is prebuilt and behind the scenes. It displays an error (via @errors in the view file) if the user enters en empty form or if the username has already been taken.
          erb :'/users/signup'
        end
      end

      get '/login' do
        if session[:user_id]
          redirect "/users/#{session[:user_id]}"
        end
        erb :'users/login'
      end
    
      post '/login' do
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password]) #Authenticates that the the user's input matches the information stored in the database.
          session[:user_id] = user.id
          redirect "/users/#{user.id}"
        else
          @errors = ["Whoops. That account doesn't exist. Please try again."]
          erb :'users/login'
        end
      end

      get '/logout' do
        session.clear
        redirect '/login'
      end

      get '/users/:id' do
        redirect_if_not_logged_in
        @reviews = @user.reviews
        @games = Game.all
        erb :'users/dashboard'
      end
end