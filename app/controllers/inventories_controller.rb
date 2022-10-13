class InventoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @inventories = Inventory.all
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)
    @inventory.user_id = current_user.id

    return render :new, alert: 'Failed to add an Inventory. Error!!' unless @inventory.save

    redirect_to @inventory, notice: 'Inventory added successfully.'
  end

  private

  def inventory_params
    params.require(:inventory).permit(:name, :description)
  end
end
