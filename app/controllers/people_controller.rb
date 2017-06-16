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
      render 'thank_you'
    else
      render 'thank_you'
    end
  end

  private
    def person_params
      params.require(:person).permit(:first_name, :last_name, :area_code, :phone_no, :email)
    end
end
