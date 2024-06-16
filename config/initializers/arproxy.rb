if Rails.env.development? || Rails.env.test?
  require 'query_tracer'
  Arproxy.configure do |config|
    config.adapter = 'postgresql'
    config.use QueryTracer
  end
  Arproxy.enable!
end