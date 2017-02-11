require "rulers/version"
require "rulers/array"
require "rulers/routing"
require "rulers/util"
require "rulers/dependencies"
require "rulers/controller"

module Rulers
  class Application
    def call(env)
      if env["PATH_INFO"] == "/favicon.ico"
        return [404, { "Content-Type" => "text/html", "Content-Length" => "0" }, []]
      end

      if env["PATH_INFO"] == "/"
        env["PATH_INFO"] = "/quotes/a_quote"
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      puts [200, { "Content-Type" => "text/html", "Content-Length" => text.size.to_s }, [text]]
      a = [200, { "Content-Type" => "text/html", "Content-Length" => text.size.to_s }, [text]]
      a.each do |aa|
        puts aa
      end
      return [200, { "Content-Type" => "text/plain", "Content-Length" => text.size.to_s }, [text]]
    end
  end
end
