class ApplicationController < Sinatra::Base

  configure do
    set(:views, 'app/views')
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, 'secret_reviews'
  end

  get ('/') do
    erb :home
  end
  
  helpers do #Most of these helper methods clean up the code in our controller/view files by simply letting us call the given method.

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

    def get_reviewer_by_review
      @reviewer = User.find_by(id: @review.user_id)
    end
    
    def redirect_if_not_logged_in
        redirect '/login' unless current_user
    end

    def check_owner(review)
      review && review.user_id == current_user.id #Used .user_id and current_user.id instead of .user and current_user in this helper method.
    end

    def redirect_if_not_owner(review)
      if !check_owner(review)
        redirect '/reviews'
      end
    end
  end
end