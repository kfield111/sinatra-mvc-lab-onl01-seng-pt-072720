require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    # @piglaitinized_text = PigLatinizer.new(params[:user_phrase])
    "test"
    erb :results
  end

end
