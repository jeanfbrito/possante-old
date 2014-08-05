class MaintenancesController < InheritedResources::Base

  before_filter :find_vehicle

  def index
    @maintenances = @vehicle.maintenances.order('date desc').page(params[:page])
    respond_to do |format|
      format.html
    end
  end

  def new
    @maintenance = @vehicle.maintenances.build
    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @maintenance }
    end
  end

  def create
    @maintenance = @vehicle.maintenances.build(resource_params)
    if @maintenance.save
      redirect_to [@vehicle, :maintenances], notice: 'Successfully created refuelling.'
    else
      render 'new'
    end
  end

  def edit
    @maintenance = @vehicle.maintenances.find(params[:id])

    render :layout => !request.xhr?
  end

  def update
    @maintenance = @vehicle.maintenances.find(params[:id])

    respond_to do |format|
      if @maintenance.update_attributes(resource_params)
        format.html { redirect_to vehicle_maintenances_path(@vehicle), notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def resource_params
      params.require(:maintenance).permit(:date, :mileage, :cost, :description, :warranty_time, :maintenance_type)
    end

    def find_vehicle
      @vehicle = Vehicle.friendly.find(params[:vehicle_id])
    end

end