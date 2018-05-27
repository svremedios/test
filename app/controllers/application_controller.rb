class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  def reseed
    if session["user_id"] != nil 
      if User.find_by(id: session["user_id"]).user_type==1
        load "db/seeds.rb"
        load "db/course_data/course_seed.rb"
        redirect_to "/"
      else
        if params["current_url"] == nil
          redirect_to "/", notice: "You need administrator priviledges to complete that action."
        else
          redirect_to params["current_url"], notice: "You need administrator priviledges to complete that action."
        end 
      end
    else
      if params["current_url"] == nil
        redirect_to "/", notice: "You need to be logged in as an administrator."
      else
        redirect_to params["current_url"], notice: "You need to be logged in as an administrator."
      end
    end
  end
end
