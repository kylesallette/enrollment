class StudentsController < ApplicationController



  def show
    @student = Student.find(params[:id])
    @address = Address.where(params[:id] == @student.id)
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new()
  end

  def create
    @student = Student.new(student_params)
  if @student.save
    flash[:success] = "#{@student.name} created!"
    redirect_to student_path(@student)
  else
    render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
      if @student.save
        flash[:success] = "#{@student.name} edited!"
        redirect_to student_path(@student)
      else
        render :edit
        flash[:success] = "Something went wrong!"
      end
    end

    def destroy
      Student.find(params[:id]).destroy
      redirect_to students_path
    end



  private

  def student_params
     params.require(:student).permit(:name)
  end


end
