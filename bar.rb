require_relative('guest')
require_relative('drink')

class Bar

  def guest_buys_drink?(guest, drink)
    if guest.age > 18 && guest.funds >= drink.price
      return true
    else
      return false
    end

  end


end