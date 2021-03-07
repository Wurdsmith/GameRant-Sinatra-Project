class ReviewsController < ApplicationController
    
    get '/reviews' do
        redirect_if_not_logged_in
        @reviews = Review.all
        @users = User.all
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

      
  get '/reviews/:id/edit' do
    redirect_if_not_logged_in
    set_reviews
    redirect_if_not_owner(@reviews)
    erb :'reviews/edit'
  end

  patch '/reviews/:id' do
    redirect_if_not_logged_in
    set_review
    if check_owner(@reviews)
      @reviews.update(params[:reviews])
    end
    erb :'reviews/show'
  end

  delete '/reviews/:id' do
    redirect_if_not_logged_in
    set_review
    if check_owner(@reviews)
      @reviews.delete
      redirect('/reviews')
    else
      # set up error message
      erb :'reviews/show'
    end
  end

end