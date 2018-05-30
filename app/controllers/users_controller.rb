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
      if params[:password] == params[:password_check]
        tmp = User.create name: params["name"],
                    email: params["email"],
                    password: params["password"]
        if tmp.valid?
          user = User.find_by(email: params["email"])
          session["user_id"] = user.id
          redirect_to "/", notice: "Hello, #{user.name}"
        else
          render "/users/new", notice: "Your passwords did not match: Please try again."
        end
      else
        render "/users/new", notice: "Your passwords did not match: Please try again."
      end
    else
      render "/login", notice: "The email address #{params["email"]} is already registered. Please sign in."
    end
  end

  def edit

  end

  def update

  end

end
