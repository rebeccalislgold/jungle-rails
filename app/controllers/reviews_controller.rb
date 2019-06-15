class ReviewsController < ApplicationController
    def create
        @product = Product.find(params[:product_id])
        @review = @product.reviews.create(review_params)
        redirect_to product_path(@product)
    end

    private
        def review_params
            params.require(:review).permit(:description, :rating, :user, :product)
        end
        
end

        # create_table :reviews do |t|
        #     t.references :product, index: true, foreign_key: true
        #     t.references :user, index: true, foreign_key: true
        #     t.text :description
        #     t.integer :rating
      
        #     t.timestamps null: false
