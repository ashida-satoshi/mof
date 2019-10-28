class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def new
    @property = Property.new
  end

  def edit
  end

  private

  def property_params
    params.require(:property).permit(:name, 
                                     :address, 
                                     :price, 
                                     :age_building, 
                                     :note)
  end
end
