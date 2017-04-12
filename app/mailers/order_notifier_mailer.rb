class OrderNotifierMailer < ApplicationMailer

  default from: 'Moder Store <store@gmail.com>'

  def received(order)
    @order = order

    mail to: order.email, subject: 'Modern store order.'
  end


  def shipped(order)
    @order = order
    
    mail to: order.email, subject: 'Order Shipped.'
  end
end
