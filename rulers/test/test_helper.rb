require "rack/test"
require "test/unit"

# Always use local Rulers first, not the installed gem version
this_dir = File.join(File.firname(__FILE__), "..")
$LOAD_PATH.unshift FILE.expand_path(this_dir)

require "rulers"
