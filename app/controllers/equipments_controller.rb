class EquipmentsController < ApplicationController
  # before_action :authenticate_user!
  before_action :load_equipment, only: %i[show edit update destroy]

  def index
    @equipments = Equipment.order(:name, :serial_number)
    # authorize @equipments
  end

  # def search
  #   period_start = params[:period_start]&.presence
  #   period_end = params[:period_end]&.presence

  #   if period_start
  #     @equipments = Equipment
  #                      .availables(period_start, period_end)
  #                      .search(params[:q])
  #   else
  #     @equipments = Equipment.none
  #   end

  #   render layout: false
  # end

  def show
    # authorize @equipment
  end

  def new
    @equipment = Equipment.new
    # authorize @equipment
  end

  def create
    @equipment = Equipment.new equipment_params
    # authorize @equipament

    if @equipment.save
      redirect_to equipments_path, notice: "Equipamento cadastrado com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # authorize @equipament
  end

  def update
    # authorize @equipament

    if @equipment.update equipment_params
      redirect_to equipment_params, notice: "Equipamento atualizado com sucesso."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # authorize @equipament
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :serial_number, :description)
  end

  def load_equipment
    @equipment = Equipment.find params[:id]
  end
end
