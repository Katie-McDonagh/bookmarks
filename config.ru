require_relative "./lib/app"
require 'rack'

use Rack::MethodOverride

run BookmarkManager