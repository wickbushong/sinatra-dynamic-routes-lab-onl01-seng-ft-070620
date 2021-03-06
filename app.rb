require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @str = ""
    @num.times do
      @str << @phrase
    end
    "#{@str}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = ""
    @str << params[:word1] + " "
    @str << params[:word2] + " "
    @str << params[:word3] + " "
    @str << params[:word4] + " "
    @str << params[:word5]

    "#{@str}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "multiply"
      @ans = params[:number1].to_i * params[:number2].to_i
    when "subtract"
      @ans = params[:number1].to_i - params[:number2].to_i
    when "add"
      @ans = params[:number1].to_i + params[:number2].to_i
    when "divide"
      @ans = params[:number1].to_i / params[:number2].to_i
    end
    "#{@ans}"
  end

end