class SessionsController < ApplicationController

  def index

  end

  def show

  end

  def destroy
     # session["user_id"] = nil
    reset_session
    redirect_to "/", notice: "See ya!"
  end

  def new

  end

  def create
    user = User.find_by(email: params["email"])
    if user == nil
      redirect_to "/users/new", notice: "The email address #{params["email"]} is not currently registered. Please sign up first."
    else
      if user.authenticate(params["password"])
        session["user_id"] = user.id
        redirect_to "/", notice: "Hello, #{user.name}"
      else
        redirect_to "/login", notice: "Nice try."
      end
    end
  end

  def edit

  end

  def update

  end

end
