class CitasController < ApplicationController
  def create
    # service = Service.find(params[:service_id])
    # current_user.services << service
    # ultima_cita = current_user.citas.last
    # ultima_cita.update(date: params[:date])
    ultima_cita = Cita.create(date: params[:date], user_id: current_user.id, service_id: params[:service_id])
    redirect_to "/citas/#{ultima_cita.id}"
  end

  def update
    cita=Cita.find(params[:id])
    cita.update(cita_params)
    redirect_to cita
  end
  def new
    @cita=Cita.new
  end


  def show
    @cita=Cita.find(params[:id])
  end
  def service_params
    params.require(:cita).permit(:name, :date)
  end
end
