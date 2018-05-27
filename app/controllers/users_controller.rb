class UsersController < ApplicationController

  def index

  end

  def show

  end

  def destroy

  end

  def new

  end

  def create
    user = User.find_by(email: params["email"])
    if user == nil
      User.create name: params["name"],
                  email: params["email"],
                  password: params["password"]
      user = User.find_by(email: params["email"])
      session["user_id"] = user.id
      redirect_to "/", notice: "Hello, #{user.name}"
    else
      redirect_to "/login", notice: "The email address #{params["email"]} is already registered. Please sign in."
    end
  end

  def edit

  end

  def update

  end

end
