class InfoMailer < ApplicationMailer
  def info_mail(info)
    @info = info
    mail to: "my_email@test.com", subject: "お問合せの確認メール"
  end
end
