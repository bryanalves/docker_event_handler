module DockerEventHandler::Strategy
  EVENTS = %w(
        create
        destroy
        die
        exec_create
        exec_start
        export
        kill
        oom
        pause
        restart
        start
        stop
        unpause
  )

  class Base
    EVENTS.each do |event|
      define_method event do |data|
      end
    end
  end
end
