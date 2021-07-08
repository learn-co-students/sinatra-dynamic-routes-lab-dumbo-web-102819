require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name_reversed = @user_name.reverse
    "#{@user_name_reversed}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared_number = @number ** 2
    "#{@squared_number}"

  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @new_string =  @phrase * @number 
     "#{@new_string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1] +  " " + params[:word2] + " " +  params[:word3] + " " +  params[:word4] + " " +  params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    case @operation
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1 / @number2}"
    end
  end

end