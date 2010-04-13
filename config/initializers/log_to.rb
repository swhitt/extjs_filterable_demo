def log_to(stream=$stdout)
  ActiveRecord::Base.logger = Logger.new(stream)
  ActiveRecord::Base.connection_pool.clear_reloadable_connections!
  RAILS_DEFAULT_LOGGER.auto_flushing = 1
end

