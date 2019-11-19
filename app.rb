require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    #reverse the string 
    @name = params[:name]
    reversed = @name.reverse
    "#{reversed}"

  end 
  get '/square/:number' do
    # change to int, square the val
    @number = params[:number].to_i
    squared = @number * @number 
    "#{squared}"
  end 

  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
    # # #return the phrase in single string xnumber times
    # @number = params[:number].to_i
    # @phrase = params[:phrase]
    # whatever = @phrase * @number
    # # new_string_2 = ""
    # # @number.times do
    # #   new_string_2 << @phrase
    # #   new_string_2 << " "
    # # end 
    # # "#{new_string_2}"
    # "#{whatever}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    stringy = ""
    params.each do |word|
      stringy << "#{word} "
    end 
    "#{stringy}"
    # "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    #combines into a single string all the words

  end 
  get '/:operation/:number1/:number2' do
    #takes in operation and does it to numb1 and nub2 return as string
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation 
    when "add"
      result = (@number1 + @number2)
      "#{result}"
    when "subtract"
      result = (@number1 - @number2)
      "#{result}"    
    when "multiply"
      result = (@number1 * @number2)
      "#{result}"
    when "divide"
      result = (@number1 / @number2)
      "#{result}"
    end 
  end

end