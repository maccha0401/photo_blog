# ユーザを作成する関数
def CreateUser(number)
  number = number.to_s
  User.create!(
    login_name: number,
    email:   number + "@" + number + ".com",
    password: number,
    # 画像はあらかじめアップロードしておく。
    face: File.open("./app/assets/images/me.gif")
  )
end

# ■ユーザの作成
CreateUser(1111)
CreateUser(2222)
CreateUser(3333)
CreateUser(4444)

# ■meganeの作成
100.times do |seed|
  Megane.create!(
    content: Faker::OnePiece.akuma_no_mi,
    picture: File.open("./app/assets/images/header_button.png"),
    user_id: Faker::Number.between(1, 4),
    likes_count: 0
  )
end
