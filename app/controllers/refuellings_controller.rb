class RefuellingsController < InheritedResources::Base

  before_filter :find_vehicle

  def update
    @refuelling = @vehicle.refuellings.find(params[:id])

    respond_to do |format|
      if @refuelling.update_attributes(resource_params)
        format.html { redirect_to vehicle_refuellings_path(@vehicle), notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @refuelling.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @refuelling = @vehicle.refuellings.find(params[:id])

    render :layout => !request.xhr?
  end

  def index
    @refuellings = @vehicle.refuellings.order('date desc').page(params[:page])
    respond_to do |format|
      format.html
    end
  end

  def new
    @refuelling = @vehicle.refuellings.build
    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @refuelling }
    end
  end

  def create
    @refuelling = @vehicle.refuellings.build(resource_params)
    if @refuelling.save
      redirect_to [@vehicle, :refuellings], notice: 'Successfully created refuelling.'
    else
      render 'new'
    end
  end



  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def resource_params
      params.require(:refuelling).permit(:date, :km, :liter_price, :total_value, :gas_station)
    end

    def find_vehicle
      @vehicle = Vehicle.friendly.find(params[:vehicle_id])
    end

end