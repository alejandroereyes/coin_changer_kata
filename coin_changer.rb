class CoinChanger
  attr_reader :remainder

  def initialize
    @quarter = 25
    @dime = 10
    @nickel = 5
    @penny = 1
    @remainder = 0
    @total_coins = [] #[@quarter, @dime, @nickel, @penny]
  end

  def changer(money)

    # [25, 10, 5, 1].each do |coin_value|
    #   shillings = money / coin_value
    #   @total_coins += ( [coin_value] * shillings )
    #   money -= ( coin_value * shillings )
    # end

    # @total_coins

    if money >= @quarter
      coins = (money / @quarter).floor
      @total_coins += ( [@quarter] * coins)
      money -= (coins * @quarter)
    end

    if money >= @dime
      coins = (money / @dime).floor
      @total_coins += ( [@dime] * coins )
      money -= (coins * @dime)
    end

    if money >= @nickel
      coins = (money / @nickel).floor
      @total_coins += ( [@nickel] * coins )
      money -= (coins * @nickel)
    end

    if money >= @penny
      coins = (money / @penny).floor
      @total_coins += ( [@penny] * coins )
    end

    @total_coins
  end #changer
end # class

convert = CoinChanger.new
coins = []
coins = convert.changer(41)
puts coins
