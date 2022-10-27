class AlertMailer < ApplicationMailer

    def send_when_posts_destroy(user) #メソッドに対して引数を設定
        @user = user #ユーザー情報

        # 送信先のメールアドレスを指定
        mail to: user.email, subject: '【PostApp】 投稿削除のお知らせ'
    end

end
