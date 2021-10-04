class PropertiesController < ApplicationController
  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(params.require(:property)
      .permit(
        :title,
        :description,
        :rooms,
        :bathrooms,
        :parking_slot,
        :pets,
        :daily_rate,
        :property_type_id
      ))

    if @property.save
      redirect_to @property
    else
      render :new
    end
  end
end
