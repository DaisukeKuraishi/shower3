class GrayscalesController < ApplicationController
  layout "grayscale"

  def index
   @grayscale = Grayscale.new
   @grayscales = Grayscale.all
  end

  def new
    @grayscale = Grayscale.new
  end

  def create
    @grayscale = Grayscale.new(grayscale_params)
    @grayscale.save
    redirect_to root_path
    @grayscales = Grayscale.all
  end

  def edit
      @grayscale = Grayscale.find(params[:id])
  end

  def update
    @grayscale = Grayscale.find(params[:id])

      respond_to do |format|
            if @grayscale.update(grayscale_params)
              format.html { redirect_to grayscales_path notice: 'User was successfully created.' }
              format.json { render :show, status: :created, location: @grayscale }
              format.js { @status = "success"}
            else
              format.html { render :edit }
              format.json { render json: @grayscale.errors, status: :unprocessable_entity }
              format.js { @status = "fail" }
            end
          end
    @grayscales = Grayscale.all
  end

  def destroy
    @grayscale = Grayscale.find(params[:id])
    @grayscale.destroy
    redirect_to root_path
  end

  private

    def grayscale_params
      params.require(:grayscale).permit(
        :title,
        :reason,
        :p_key,
        :sns
        )
    end

end
