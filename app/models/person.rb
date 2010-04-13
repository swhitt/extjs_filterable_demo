class Person < ActiveRecord::Base
  attr_accessible :name, :address, :email, :phone
  extjs_filterable :special_filters => {:address => :filter_address}
  
  class << self
    def filter_address(conditions,values,type,value)
      logger.debug '-----------------------------------'
      logger.debug 'Params passed in to filter_address:'
      logger.debug "conditions: #{conditions.inspect}"
      logger.debug "values:     #{values.inspect}"
      logger.debug "type:       #{type.inspect}"
      logger.debug "value:      #{value.inspect}\n"
      
      new_conditions = []
      value.split(',').each do |val|
        new_conditions << "UPPER(address) like ?"
        values << "%#{val.upcase}%"
      end
      new_conditions = new_conditions.join(' OR ')
      conditions << "(#{new_conditions})"
      
      logger.debug 'After Processing:'
      logger.debug "conditions: #{conditions.inspect}"
      logger.debug "values:     #{values.inspect}"
      logger.debug '-----------------------------------'
    end
  end
end
