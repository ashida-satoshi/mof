class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
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

  def new
    @property = Property.new
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
    redirect_to properties_path, notice: "物件情報を削除しました。"
  end

  private

  def property_params
    params.require(:property).permit(:name, 
                                     :address, 
                                     :price, 
                                     :age_building, 
                                     :note)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
