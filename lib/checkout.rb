class Checkout
  def scan(sku)
    @sku = sku
  end

  def total
    case sku
    when "A"
      50
    when "B"
      30
    when "C"
      20
    when "D"
      15
    else
      0
    end
  end

  private

  attr_accessor :sku
end