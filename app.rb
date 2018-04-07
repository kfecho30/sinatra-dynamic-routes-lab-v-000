require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:num' do
    @sqr = params[:num].to_i * params[:num].to_i
    "#{@sqr}"
  end

  get '/say/:number/:phrase' do
    binding.pry
    @phrase = params[:phrase]
    params[:number].times do
      "#{@phrase}"
    end
  end
end
