class ProductsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
    def set_product
  if params[:id] == 'new'
    # Đây là trang tạo sản phẩm mới, không cần tìm sản phẩm
    @product = Product.new
  else
    # Còn lại, tìm sản phẩm theo ID
    @product = Product.find(params[:id])
  end
end


    def product_params
      params.expect(product: [ :name, :description, :featured_image, :inventory_count ])
    end
end
