class MailerJob < ApplicationJob
  queue_as :default

  # perform_later（非同期）, perform_now（同期） で実行
  def perform(*args)
    # ActionMailer
    AlertMailer.send_when_posts_destroy('user').deliver
  end
  
end
