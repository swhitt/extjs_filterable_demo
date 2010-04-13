class PeopleController < ApplicationController
  def index
    @people = Person.paginate_by_filter(params)
    
    serialized_people = @people.map{|cv| ActiveRecord::Base::Serializer.new(cv).serializable_record}
    @json = { :data => serialized_people, :total => @people.total_entries }.to_json
    
    respond_to do |format|
      format.js { render :json =>  @json }
      format.html
    end
    
  end
end
