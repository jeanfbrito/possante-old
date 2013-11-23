class VehiclesController < InheritedResources::Base
  #before_filter :authenticate_user!

  def show
    @vehicle = Vehicle.friendly.find(params[:id])
    @refuellings = @vehicle.refuellings.order('date desc')

    respond_to do |format|
      format.html
    end
  end

  #def index
  #end
end
