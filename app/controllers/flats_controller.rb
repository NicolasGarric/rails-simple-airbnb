class FlatsController < ApplicationController
  def new
    @flat = Flat.new # Needed to instantiate the form_with
  end

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    # No need for app/views/flats/create.html.erb
    redirect_to flats_path
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    # No need for app/views/flats/update.html.erb
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    # No need for app/views/flats/destroy.html.erb
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :content)
  end
end
