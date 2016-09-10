class Admin::ExercisesController < AdminController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  def index
    @exercises = Exercise.all
  end

  def show
  end

  def new
    @exercise = Exercise.new
  end

  def edit
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      redirect_to [:admin, @exercise], notice: I18n.t('messages.create_success', :model => Exercise.model_name.human)
    else
      render :new
    end
  end

  def update
    if @exercise.update(exercise_params)
      redirect_to [:admin, @exercise], notice: I18n.t('messages.update_success', :model => Exercise.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    @exercise.destroy
    redirect_to admin_exercises_url, notice: I18n.t('messages.destroy_success', :model => Exercise.model_name.human)
  end

  private
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    def exercise_params
      params.require(:exercise).permit(:title, :text)
    end
end
