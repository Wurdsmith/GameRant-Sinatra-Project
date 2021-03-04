require './config/environment'

use Rack::MethodOverride
use UsersController
use GamesController
use ReviewsController
run ApplicationController