class MapsController < ApplicationController

  def markers
    @markers = Dispensary.all
    respond_to do |format|
      format.json { render json: @markers }
      format.html { render status: 406, nothing: true }
    end
  end

end



