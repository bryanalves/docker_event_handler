module DockerEventHandler
  module RunLoop
    def self.call(strategies)
      Docker::Event.stream do |event|
        strategies.each do |strategy|
          strategy.send(event.status, event)
        end
      end
    end
  end
end
