class VisitorsController < ApplicationController

  def new
  	#flash[:notice] = 'Welcome!'
  	#flash.now[:alert] = 'Access not allowed.'
  	@visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.update_spreadsheet
      flash.now[:notice] = "Chose #{@visitor.favorite}."
      render :new
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:visitor).permit(:favorite, :comment)
  end

end