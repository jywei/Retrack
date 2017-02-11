require "../rulers/lib/rulers.rb"

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

# The LOAD_PATH line lets me load files out of “app/controllers” just by requiring their name, as Rails does.

require "quotes_controller"

module BestQuotes
  class Application < Rulers::Application
  end
end
