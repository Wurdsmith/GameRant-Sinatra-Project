class ReviewsController < ApplicationController
    
    get '/reviews' do
        redirect_if_not_logged_in
        @reviews = Review.all
        erb :'reviews/index'
      end
    
      get '/reviews/:id/new' do
        redirect_if_not_logged_in
        game_hash = Game.find_by(id: params[:id])
        @game_name = game_hash.name
        erb :'reviews/new'
      end

end