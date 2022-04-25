class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def with_query_params
    student = Student.find(params[:first_name])
    render json: student
  end

end
