class GeneratorController < ApplicationController

  def new
  end

  def create
		@mawjewl = Mawjewl.find(params[:id])
	
		respond_to do |format|
      format.escript
    end
  end
end
