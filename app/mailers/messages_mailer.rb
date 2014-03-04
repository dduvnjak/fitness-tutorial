class MessagesMailer < ActionMailer::Base
  default from: "from@example.com"
  default :to => "fitness.tutorial.ror@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Fitness website inquiry: #{message.subject}")
  end
end
