class ParticipantsController < ApplicationController

  def create
    @participant = Participant.new(participant_params)
    authorize @participant
    @participant.save
    end

private
  def participant_p
    params.require(:participant).permit(:starting_date, :ending_date, :starting_hour, :ending_hour, :location, :title, :description)
  end
end


