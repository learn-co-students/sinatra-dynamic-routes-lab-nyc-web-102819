require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @rev_name = params[:name].reverse
    "#{@rev_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @numphrase = @phrase * @number
    "#{@numphrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    @words << params[:word1]
    @words << params[:word2]
    @words << params[:word3]
    @words << params[:word4]
    @words << params[:word5]
    @sentence = @words.join(" ")
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]

    if @op == "add" 
      @answer = @num1 + @num2
    elsif @op == "subtract"  
      @answer = @num1 - @num2
    elsif @op == "multiply" 
      @answer = @num1 * @num2
    else @op == "divide" 
      @answer = @num1 / @num2
    end
    "#{@answer.to_s}"
  end

end