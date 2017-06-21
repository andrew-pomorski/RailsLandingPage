class Person
  include Mongoid::Document
  store_in collection: "formdata"
  field :first_name, type: String
  field :last_name, type: String
  field :area_code, type: String
  field :phone_no, type: String
  field :email, type: String
  field :created_at, type: String
end
