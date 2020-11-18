alias Bootleg.{Config, DSL}
use DSL

task :update do
  invoke(:build)
  invoke(:deploy)
  invoke(:restart)
end

task :stop_silent do
  nodetool = "bin/#{Config.app()}"

  remote :app do
    "#{nodetool} describe && (#{nodetool} stop || true)"
  end
end
