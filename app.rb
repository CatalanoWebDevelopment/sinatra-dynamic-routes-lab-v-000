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
    array = []

    number.times do
      array << @phrases
    end

    array.join(",")

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    x = params.collect do |k, v|
      v
    end

    x.join(" ") + "."

  end

  get '/:operation/:number1/:number2' do
    @o = params[:operation]
    @n1 = params[:number1]
    @n2 = params[:number2]
binding.pry
    if @o == "add"
      @o = +
    elsif @o == "subtract"
      @o = -
    elsif @o == "multiply"
      @o = *
    else
      @o = /
    end
  end

end
