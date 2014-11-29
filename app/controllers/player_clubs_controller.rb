class PlayerClubsController < ApplicationController
  def create
    @club = Club.find(params[:club_id])
    PlayerClub.create(club_id: @club.id, player_id: current_user.id)
    Resque.enqueue(EmailJob, @club.id)
    # That line ^ does the same as:
    # current_user.clubs << @club
    redirect_to root_path
  end
end
