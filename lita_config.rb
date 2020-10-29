Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Lita"

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :shell
  # config.robot.adapter = :doubler
  config.handlers = :doubler

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  #config.redis.host = "h:pd62753fc0063a655a1e8b0d9f7d2565fcca66501c1ce3f47ef9df7161c3aa4df@ec2-34-237-4-255.compute-1.amazonaws.com"
  #config.redis.port = 14649

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # aconfig.handlers.doubler =
  # config.handlers.some_handler.some_config_key = "value"
  config.robot.adapter = :slack
  config.adapters.slack.token = "xoxb-1458563476386-1451835816102-1oxxXtBhYFV5zDhdJsNJLk1M"

# The adapter you want to connect with. Make sure you've added the
#
# appropriate gem to the Gemfile.
#
# heroku uses a RACK_ENV of 'production' by default
  #if ENV['BACK_ENV']=='production'
  #  config.robot.adapter =:slack
  #  config.redis[:url]=ENV.fetch('REDIS_URL')
  #else
  #  config.robot.adapter=:shell
  #end

# slack adapter demands a value even in dev when wa aren;t using it...
  #config.adapters.slack.token = ENV.fetch('SLACK_TOKEN','xoxb-1458563476386-1451835816102-1oxxXtBhYFV5zDhdJsNJLk1M')
end
