class DocumentsController < InheritedResources::Base

  before_filter :find_maintenance
  before_filter :find_vehicle

  def index
    @vehicle = @maintenance.vehicle
    @documents = @maintenance.documents.all
    respond_to do |format|
      format.html
    end
  end

  def new
    @document = @maintenance.documents.build
    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @document }
    end
  end

  def create
    @document = @maintenance.documents.build(resource_params)
    if @document.save
      redirect_to [@vehicle, @maintenance, :documents], notice: 'Successfully created refuelling.'
    else
      render 'new'
    end
  end

  def edit
    @document = @maintenance.documents.find(params[:id])

    render :layout => !request.xhr?
  end

  def update
    @document = @maintenance.documents.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(resource_params)
        format.html { redirect_to vehicle_maintenance_documents_path(@vehicle, @maintenance), notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def resource_params
      params.require(:document).permit(:title, :description, :file, :file_uid, :file_name)
    end

    def find_maintenance
      @maintenance = Maintenance.find(params[:maintenance_id])
    end
    def find_vehicle
      @vehicle = Vehicle.friendly.find(params[:vehicle_id])
    end

end