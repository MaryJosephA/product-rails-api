# frozen_string_literal: true

class ProductsController < ProtectedController
  before_action :set_product, only: %i[show update destroy]

  # GET /products
  def index
     @products = Product.all
    # @product = current_user.products

    render json: @products
  end

  # GET /products/1
  def show
    # render json: products.find(params[:id])

    @product = current_user.products

    render json: @product
  end

  # POST /products
  def create
    @product = current_user.products.build(product_params)
    # @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = current_user.products.find(params[:id])
    # @product = Product.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def product_params
    params.require(:product).permit(:prod_name, :quantity)
  end
end
