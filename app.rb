require_relative 'config/environment'

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
    @phrase = params[:phrase]
    params[:number].to_i.times do
      "#{@phrase}"
    end
  end
end
