class Admin::CategoriesController < AdminController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, @category], notice: I18n.t('messages.create_success', :model => Category.model_name.human)
    else
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to [:admin, @category], notice: I18n.t('messages.update_success', :model => Category.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_url, notice: I18n.t('messages.destroy_success', :model => Category.model_name.human)
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
