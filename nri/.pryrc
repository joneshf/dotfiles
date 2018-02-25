def log_stdout(cache: true, ar: true)
  stdout = Logger.new(STDOUT)
  ActiveRecord::Base.logger = stdout if ar
  Rails.cache.logger = stdout if cache
end

def sql(query)
  ActiveRecord::Base.connection.select_all(query)
end
