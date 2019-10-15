class ServicesController < ApplicationController
  def index
    @services=Service.all
  end

  def new
  @services=Service.new
  end

  def create
    service = Service.new(service_params)
    service.save

    redirect_to service_path(service)
  end

  def show
    @service= Service.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)

    redirect_to posts_path
  end

  def destroy
    Service.find(params["id"]).destroy
    redirect_to service_path
  end

  def perfil
  end

  private
  def service_params
    params.require(:service).permit(:descripcion_servicio, :name, :picture, :date)
  end
end
