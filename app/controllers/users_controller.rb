class UsersController < ApplicationController
    
    get '/signup' do
        if session[:user_id]
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
          @errors = new_user.errors.full_messages
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
    
        if user && user.authenticate(params[:user][:password])
          session[:user_id] = user.id
          flash[:message] = "Login successful!"
          redirect "/users/#{user.id}"
        else
          @errors = ["Whoops. That account doesn't exit. Please try again."]
          erb :'users/login'
        end
      end

      get '/logout' do
        session.clear
        redirect '/login'
      end

      get '/users/:id' do
        redirect_if_not_logged_in
          @user = User.find_by(id: params[:id])
          @games = Game.all
          erb :'users/dashboard'
      end
end