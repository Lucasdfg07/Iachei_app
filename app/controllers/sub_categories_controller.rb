class SubCategoriesController < ApplicationController
	before_action :set_category, only: [:new]

	def new
		@sub_category = SubCategory.new
	end

	def create
		@sub_category = SubCategory.new(sub_category_params)
		@sub_category.category_id = params[:category]

		if @sub_category.save
			redirect_to categories_path, notice: 'Sub-categoria salva com sucesso!'
		else
			redirect_to categories_path, alert: 'Problema ao salvar sub-categoria! Tente novamente mais tarde.'
		end
	end

	private

	def set_category
		@category = Category.find(params[:category])
	end

	def sub_category_params
		params.require(:sub_category).permit(:name, :photo)
	end
end
