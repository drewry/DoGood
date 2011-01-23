class HomeController < ApplicationController
  def index
    # if the user is signed in send them to the main goods page
    if user_signed_in?
      redirect_to new_good_path
    end
  end

end