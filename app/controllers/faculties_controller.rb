class FacultiesController < ApplicationController

  def index

  end

  def show

  end

  def destroy
    if session[:user_id] != nil 
      if User.find_by(id: session[:user_id]).user_type == 1
        faculty_name = "#{Faculty.find_by(id:params[:id]).first_name} #{Faculty.find_by(id:params[:id]).last_name}"
        Faculty.delete(params["id"])
        redirect_to "/faculty", notice: "#{faculty_name} was deleted"
      else
        redirect_to '/faculty', notice: 'You must be logged in as an adminstrator to delete a faculty member.'
      end
    else
      redirect_to '/faculty', notice: 'You must be logged in as an adminstrator to delete a faculty member.'
    end
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

end
