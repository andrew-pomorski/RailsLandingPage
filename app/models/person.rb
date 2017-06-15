class Person
  include Mongoid::Document
  field :full_name, type: String
  field :phone_no, type: String
  field :email, type: String
end
