class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times {@property.stations.build}
  end

  def show
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path, notice: "新しく物件登録しました。"
    else
      render :new
    end
  end


  def edit
  end
  
  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: "物件情報を編集しました。"
    else
      render :edit
    end
  end

  def destroy
     @property.destroy
     if @property.destroy
       redirect_to properties_path, notice: "物件情報を削除しました。"
    end
  end

  private

  def property_params
    params.require(:property).permit(
      :name, 
      :address, 
      :price, 
      :age_building, 
      :note,
      stations_attributes: [ :id, :route_name, :station_name, :walking_time ])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end