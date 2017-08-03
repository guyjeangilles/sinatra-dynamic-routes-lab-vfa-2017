require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @num = params[:number]
    square = @num.to_i*@num.to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    loop_freq = @num.to_i
      output = ""
      for i in 0..loop_freq
        output = output + "\n" "#{@phrase}"
      end
      output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    output = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]

    if @operation == 'add'
      output = @num1.to_i + @num2.to_i
    elsif @operation == 'subtract'
      output = @num1.to_i - @num2.to_i
    elsif @operation  == 'multiply'
      output = @num1.to_i*@num2.to_i
    elsif @operation  == 'divide'
      output = @num1.to_i/@num2.to_i
    end
    "#{output}"
  end

end
