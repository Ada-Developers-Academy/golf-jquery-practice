class ClubMailer < ActionMailer::Base
  default from: "b@example.com"

  def join_us(club_id)
    # @user = User.find(user_id)
    @club = Club.find(club_id)
    mail(
      to: "bookis.smuin@gmail.com",
      subject: "Thanks for joining #{@club.name}!"
    )
  end
end
