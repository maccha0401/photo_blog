class InfoMailer < ApplicationMailer
  def info_mail(info)
    @info = info
    mail to: info.user.email, subject: "投稿したよん♪"
  end
end
