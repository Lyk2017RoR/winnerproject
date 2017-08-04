class BrandsController < ApplicationController
  before_action :find_brand, only: %i[edit show update destroy]

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to welcome_admin_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @brand.update(brand_params)
      redirect_to welcome_admin_path
    else
      render "new"
    end
  end

  def destroy
    @brand.destroy
    redirect_to welcome_admin_path    
  end

  private
  def brand_params
    params.require(:brand).permit(:name)
  end
  
  def find_brand
        @brand = Brand.friendly.find params[:id]
  end
end
