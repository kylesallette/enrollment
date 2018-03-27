class AddressesController < ApplicationController

  def new
    @student = Student.find(params[:student_id])
    @address  = Address.new()
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(address_params)
      if @address.save
       flash[:success] = "You created a new address."
       redirect_to student_path(@student, @address)
      else
       render :new
      end
   end

   def show
      @address = Address.find(params[:id])
    end




  private

  def address_params
     params.require(:address).permit(:description, :street, :city, :state, :zipcode, :student_id)
  end




end
