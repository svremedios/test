class CoursesController < ApplicationController

  def index

  end

  def show

  end

  def destroy
    if session[:user_id] != nil 
      if User.find_by(id: session[:user_id]).user_type == 1
        course_name = "#{Course.find_by(id:params[:id]).code_id}: #{Course.find_by(id:params[:id]).name}"
        Course.delete(params["id"])
        redirect_to "/courses", notice: "#{course_name} was deleted"
      else
        redirect_to '/courses', notice: 'You must be logged in as an adminstrator to delete a course.'
      end
    else
      redirect_to '/courses', notice: 'You must be logged in as an adminstrator to delete a course.'
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
