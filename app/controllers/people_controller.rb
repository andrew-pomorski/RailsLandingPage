class PeopleController < ApplicationController
 skip_before_filter :verify_authenticity_token   
 def index
     @success = false
     @person = Person.new
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    countries_list = ['Argentina','Australia','Austria','Belgium','Brazil','Canada','Chile','China','Christmas Island','Denmark','Falkland Islands','Fiji','Finland','France','Germany','Gibraltar','Greece','Hong Kong','Hungary','Iceland','India','Indonesia','Ireland','Isle of Man','Italy','Japan','Maldives','Mexico','Netherlands','New Zealand','Norway','Panama','Paraguay','Peru','Philippines','Poland','Portugal','Qatar','Russia','Singapore','Somalia','South Africa','South Korea','Spain','Sweden','Switzerland','Thailand', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'Uruguay', 'Vietnam'] 
    country_codes = ["+54","+61","+43","+32","+55","+1","+56","+86","+61","+45","+500","+679","+358","+33","+49","+350","+30","+852","+36","+354","+91","+62","+353","+44-1624","+39","+81","+960","+52","+31","+64","+47","+507","+595","+51","+63","+48","+351","+974","+7","+65","+252","+27","+82","+34","+46","+41","+66","+380","+971","+44","+1","+598","+84"]
    index = countries_list.index(@person.area_code)
    @person.area_code = country_codes[index]
    if @person.save 
      
      @success = true
      render 'thank_you'
    else
      render 'thank_you'
    end
  end

  private
    def person_params
      params.require(:person).permit(:first_name, :last_name, :area_code, :phone_no, :email, :created_at)
    end
end


