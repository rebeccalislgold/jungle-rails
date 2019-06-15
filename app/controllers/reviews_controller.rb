class ReviewsController < ApplicationController
    def create
        @product = Product.find(params[:product_id])
        puts current_user
        # @user = current_user
        
        @review = @product.reviews.create(review_params)
        @review.user = current_user
        if @review.save
            redirect_to product_path(@product)
        else
            redirect_to product_path(@product)
        end
    end

    private
        def review_params
            params.require(:review).permit(:description, :rating)
        end
        
end

        # create_table :reviews do |t|
        #     t.references :product, index: true, foreign_key: true
        #     t.references :user, index: true, foreign_key: true
        #     t.text :description
        #     t.integer :rating
      
        #     t.timestamps null: false
