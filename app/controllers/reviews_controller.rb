class ReviewsController < ApplicationController
    
    get '/reviews' do
        redirect_if_not_logged_in
        @reviews = Review.all
        erb :'reviews/index'
      end
    
      get '/reviews/:id/new' do
        redirect_if_not_logged_in
        game_hash = Game.find_by(id: params[:id])
        @game_id = game_hash.id
        @game_name = game_hash.name
        erb :'reviews/new'
      end

      post '/reviews' do
        redirect_if_not_logged_in
        review = current_user.reviews.create(params[:review])
        if review.valid?
          redirect "reviews/#{review.id}"
        else
            flash[:message] = review.errors.full_messages
            redirect '/reviews/new'
        end
    end

    get '/reviews/:id' do
        redirect_if_not_logged_in
        set_review
        if !@review
          redirect '/reviews'
        end
        erb :'reviews/show'
      end
end