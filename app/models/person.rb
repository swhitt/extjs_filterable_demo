class Person < ActiveRecord::Base
  attr_accessible :name, :address, :email, :phone
  extjs_filterable
  
end

