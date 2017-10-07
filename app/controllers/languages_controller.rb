class LanguagesController < OpenReadController
  before_action :set_language, only: [:update, :destroy]

  # GET /languages
  def index
    @languages = Language.all

    render json: @languages
  end

  # GET /languages/1
  def show
    render json: Language.find(params[:id])
  end

  # POST /languages
  def create
    if current_user.admin == true
      @language = current_user.languages.build(language_params)

      if @language.save
        render json: @language, status: :created, location: @language
      else
        render json: @language.errors, status: :unprocessable_entity
      end
    else
      render json: @language.errors, status: :forbidden
    end
  end

  # PATCH/PUT /languages/1
  def update
    if current_user.admin == true
      if @language.update(language_params)
        render json: @language
      else
        render json: @language.errors, status: :unprocessable_entity
      end
    else
      render json: @language.errors, status: :forbidden
    end
  end

  # DELETE /languages/1
  def destroy
    if current_user.admin == true
      @language.destroy
    else
      render json: @language.errors, status: :forbidden
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language
      if current_user.admin == true
        @language = current_user.languages.find(params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def language_params
      params.require(:language).permit(:name, :level)
    end
end
