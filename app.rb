require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @answer = @num * @num
    @answer.to_s
  end

  get '/say/:number/:phrase' do
    @string = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      @string += "#{@phrase}"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] +"."
    @string
  end

  get '/:operation/:number1/:number2' do
    params[:number1].to_i params[:operation] params[:number2].to_i
  end


end
