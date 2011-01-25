class ApiController < ApplicationController
  
  def index
  @data = { :result => params[:data]}
      
    respond_to do |format|
      format.json  { render :json => @data }
    end
    
  end

end