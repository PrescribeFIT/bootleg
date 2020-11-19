alias Bootleg.{UI, Config}
use Bootleg.DSL

task :restart do
  remote :app do
    "sudo systemctl restart #{Config.app()}"
  end

  UI.info("#{Config.app()} restarted")
  :ok
end
