class MaintenancesController < InheritedResources::Base

  before_filter :find_vehicle

  def update
    
  end

  def edit
    
  end

  def index
    @maintenances = @vehicle.maintenances.order('date desc').page(params[:page])
    respond_to do |format|
      format.html
    end
  end

  def new
    
  end

  def create
    
  end



  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def resource_params
      params.require(:maintenance).permit(:date, :mileage, :cost, :description)
    end

    def find_vehicle
      @vehicle = Vehicle.friendly.find(params[:vehicle_id])
    end

end