class Api::CategoryController < Api::BaseController

    def index
        @categories = Category.all

        respond_to do |format|
            format.json { render json: @categories }
        end
    end

    def create
        category = Category.new(category_params)

        respond_to do |format|
            format.json { render json: @category }
        end
    end

    def destroy
        @category = Category.find(params[:id])

        @category.destroy

        respond_to do |format|
            format.json { head :no_content }
        end
    end

    private
        def category_params
            params.require(:category).permit(:name)
        end

end
