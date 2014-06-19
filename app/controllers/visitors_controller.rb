class VisitorsController < ApplicationController

  def new
  	flash[:notice] = 'Welcome!'
  	flash.now[:alert] = 'Access not allowed.'
  end

end
