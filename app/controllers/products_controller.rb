class ProductsController < ApplicationController
  def new
    #SAMPLE CODE
    # @product = Product.new  	
    #SAMPLE CODE END
  end

  def show
    #SAMPLE CODE
  	# @product = Product.find(params[:id])
    #SAMPLE CODE END
  end

  def create
    #SAMPLE CODE
    # @product = Product.new(product_params)
    # if @product.save
    #   # Handle a successful save.
    #   redirect_to @product      
    # else
    #   render 'new'
    # end
    #SAMPLE CODE END
  end

  private

    def product_params
      params.require(:product).permit(:name, :sku)
    end  
end
