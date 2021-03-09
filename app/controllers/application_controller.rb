class ApplicationController < Sinatra::Base

  configure do
    set(:views, 'app/views')
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, 'secret'
  end

  get ('/') do
    erb :home
  end
  
  helpers do

    def current_user
      @user = User.find_by(id: session[:user_id])
    end

    def set_review
      @review = Review.find_by(id: params[:id])
    end

    def set_game
      @game = Game.find_by(id: params[:id])
    end

    def get_game_by_review
      @game = Game.find_by(id: @review.game_id)
    end


    def redirect_if_not_logged_in
        redirect '/login' unless current_user
    end

    def check_owner(review)
      review && review.user_id == current_user.id #Used .user_id and current_user.id instead of .user and current_user in this helper method.
    end

    def redirect_if_not_owner(user)
      if !check_owner(user)
        flash[:message] = "Users can only modify their own reviews!"
        redirect '/items'
      end
    end
  end
end