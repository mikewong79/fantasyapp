class Trade < ActionMailer::Base
  default from: "mikewong79@gmail.com" # Replace YOUR_EMAIL_ADDRESS_HERE with your gmail address

  def offer(owner) # wizard is going to be a var that stores whichever email is passed in via the form

  	@email = owner # Here, we set an instance variable that matches wizard (we use an instance variable because we're going to refer to this in the email templates)
  	mail(to: @email.address, subject: "You have recieved a trade offer!") # Set up your to and subject fields!

  end



end
