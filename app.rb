require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @numbers = params[:number]
    (@numbers.to_i * @numbers.to_i).to_s
  end

  get '/say/:number/:phrase' do
    @numbers = params[:number]
    @phrases = params[:phrase]
    number = @numbers.to_i
    counter = 0

    while counter < number do
      counter += 1
      puts @phrases
    end
  end


end
