namespace :status_task do
  desc '公開予定日時を過ぎた記事を公開状態にする'
  task published: :environment do
    Article.publish_wait.past_published.find_each(&:published!)
  end
end
