class UserMailer < ApplicationMailer
  default :from => "ellsmore@example.com"

  #def welcome_email(user)
  #  @order = order
  #  @url  = "http://example.com/login"
  #  mail(:to => order.email, :subject => "Thank you for your first order!")
  #end

  #def order_shipped
  #  @order = order
  #  @greeting = "Hello there"
  #  mail(:to => order.email, :subject => "Your order has been shipped!")
  #end

  #def order_received
  #  @order = order
  #  @greeting = "Hello there"
  #  mail(:to => order.email, :subject => "You have recieved your order!#")
  #end
end
