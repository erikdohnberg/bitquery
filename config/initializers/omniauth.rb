Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['Ku9aIHZepkV7vgKnBQTd0w'], ENV['rqiq7oLg3eCZL40gi6KFpYIyVHnl8aE9mOfIavQkgVw']
end