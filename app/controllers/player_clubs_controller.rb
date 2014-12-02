class PlayerClubsController < ApplicationController
  def create
    @club = Club.find(params[:club_id])
    if PlayerClub.create(club_id: @club.id, player_id: current_user.id)
      ClubMailer.join_us(@club.id).deliver
      redirect_to root_path
    else
      #
    end
  end
end
