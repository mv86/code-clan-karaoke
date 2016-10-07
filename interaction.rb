require_relative('guest')
require_relative('room')
require_relative('song')
require_relative('drink')

class Interaction

  def guest_buys_drink?(guest, drink)
    guest_funds = guest.each { |stats| stats == @funds }
    drink_price = drink.each { |stats| stats == @price }
    if guest_funds.to_i >= drink_price.to_i
      return true
    else
      return false
    end

  end


end