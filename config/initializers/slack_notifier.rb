module SlackNotifier
  unless Rails.env.test?
    DATABASE_LOG = Slack::Notifier.new Rails.application.credentials.slack[:webhooks][:database_log]
  end
end
