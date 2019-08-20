class Checkout
  def scan(sku)
    @sku = sku
  end

  def total
    if sku === "A"
      50
    else
      0
    end
  end

  private

  attr_accessor :sku
end