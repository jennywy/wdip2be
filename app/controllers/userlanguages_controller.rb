class UserlanguagesController < OpenReadController
  before_action :set_userlanguage, only: [:update, :destroy]
  # GET /userlanguages
  def index
    @userlanguages = Userlanguage.all

    render json: @userlanguages
  end

  # GET /userlanguages/1
  def show
    render json: Userlanguage.find(params[:id])
  end

  # POST /userlanguages
  def create
    @userlanguage = current_user.userlanguages.build(userlanguage_params)

    if @userlanguage.save
      render json: @userlanguage, status: :created
    else
      render json: @userlanguage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userlanguages/1
  def update
    if @userlanguage.update(userlanguage_params)
      render json: @userlanguage
    else
      render json: @userlanguage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userlanguages/1
  def destroy
    @userlanguage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userlanguage
      @userlanguage = current_user.userlanguages.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userlanguage_params
      params.require(:userlanguage).permit(:user_id, :language_id, :level)
    end
end
