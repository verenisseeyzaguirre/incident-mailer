class IncidentsController < ApplicationController

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      redirect_to incident_path(@incident)
    else
      render :new
    end
  end

  def show
    @incident = Incident.find(params[:id])
  end

  private


  def incident_params
    params.require(:incident).permit(:subject, :description, :incident_date)
  end
end
