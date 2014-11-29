class ClubMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.club_mailer.join_us.subject
  #
  def join_us(id)
    @club = Club.find(id)
    mail to: "bookis.smuin@gmail.com", subject: "#{@club.name} wants you to dance"
  end
end
