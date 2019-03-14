require 'rubygems'
require 'twilio-ruby'

account_sid = 'put my account_sid here from twilio dashboard'
auth_token = 'put my auth_token here from twilio dashboard'
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

  #method that returns a random answer when you ask it a question
  def random_answer

    #create a random number between 0 and 20
    answer = rand(21)

    #set answer based on random number generated
    case answer
      when 1
        answer = "It is certain."
      when 2
        answer = "It is decidedly so."
      when 3
        answer = "Without a doubt."
      when 4
        answer = "Yes - definitely"
      when 5
        answer = "You may rely on it."
      when 6
        answer = "As I see it, yes."
      when 7
        answer = "Most likely."
      when 8
        answer = "Outlook good."
      when 9
        answer = "Yes."
      when 10
        answer = "Signs point to yes."
      when 11
        answer = "Reply hazy, try again."
      when 12
        answer = "Ask again later."
      when 13
        answer = "Better not tell you now."
      when 14
        answer = "Cannot predict now."
      when 15
        answer = "Concentrate and ask again."
      when 16
        answer = "Don't count on it."
      when 17
        answer = "My reply is no."
      when 18
        answer = "My sources say no."
      when 19
        answer = "Outlook not so good."
      when 20
        answer = "Very doubtful."
      else
        answer = "This program is broken."
    end

    puts "Ask a yes or no question."
    question = gets
    
    message = @client.api.account.messages.create(
        :from => "+15033609387",
        :to => "+15306055844",
        :body => "#{answer}")
    
    puts message.to

  end

  random_answer



