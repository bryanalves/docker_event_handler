module DockerEventHandler::Strategy
  class Log < Base
    EVENTS.each do |event|
      define_method event do |data|
        puts event
        puts data
      end
    end
  end
end
