class RefuellingsController < InheritedResources::Base

  def show

  end

  def index
    @vehicle = Vehicle.friendly.find(params[:vehicle_id])
    @refuellings = @vehicle.refuellings.order('date desc')

    respond_to do |format|
      format.html
    end
  end
end