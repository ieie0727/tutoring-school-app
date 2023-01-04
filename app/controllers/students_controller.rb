class StudentsController < ApplicationController
  
  def index
    @students =Student.all.order(created_at: :asc)
  end

  def search
    @students =Student.where(num: params[:num]).or(Student.where(family_name: params[:family_name]).or(Student.where(first_name: params[:first_name])))
    #render "students/index"
  end

  def new
    @student =Student.new
  end

  def create
    @student =Student.new(
      num: params[:num],
      family_name: params[:family_name],
      first_name: params[:first_name]
    )
    @student.save
  end
  
  def show
    @student =Student.find_by(id: params[:id])
  end
  
end
