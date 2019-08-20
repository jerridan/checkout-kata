class Checkout

  PRICES = {
    A: 50,
    B: 30,
    C: 20,
    D: 15
  }

  def scan(sku)
    @sku = sku.to_sym
  end

  def total
    return 0 unless PRICES.has_key?(sku)

    PRICES.fetch(sku)
  end

  private

  attr_accessor :sku
end