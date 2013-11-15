class PagesController < InheritedResources::Base

  def show
    @page = Page.friendly.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def index
  end
end