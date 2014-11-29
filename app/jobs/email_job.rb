class EmailJob
  @queue = :email
  def self.perform(club_id)
    ClubMailer.join_us(club_id).deliver
  end
end
