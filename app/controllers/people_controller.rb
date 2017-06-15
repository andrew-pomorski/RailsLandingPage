class PeopleController < ApplicationController
  def index
     @success = false
     @person = Person.new
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save 
      @success = true
      render 'index'
    else
      redirect_to new_person_path
    end
  end

  private
    def person_params
      params.require(:person).permit(:full_name, :phone_no, :email)
    end
end
