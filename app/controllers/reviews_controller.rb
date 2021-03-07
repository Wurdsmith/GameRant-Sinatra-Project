class ReviewsController < ApplicationController
    
    get '/reviews' do
        redirect_if_not_logged_in
        @reviews = Review.all
        @users = User.all
        @games = Game.all
        erb :'reviews/index'
      end
    
      get '/reviews/:id/new' do
        redirect_if_not_logged_in
        set_game
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
    set_review
    get_game_by_review
    redirect_if_not_owner(@review)
    erb :'reviews/edit'
  end

  patch '/reviews/:id' do
    redirect_if_not_logged_in
    set_review
    if check_owner(@review)
      @reviews.update(params[:reviews])
    end
    erb :'reviews/show'
  end

  delete '/reviews/:id' do
    redirect_if_not_logged_in
    set_review
    if check_owner(@review)
      @review.delete
      redirect('/reviews')
    else
      # set up error message
      erb :'reviews/show'
    end
  end

end