require "../lib/checkout"

RSpec.describe Checkout do
  it "gives a price of zero when passed an empty sku" do
    checkout = Checkout.new

    checkout.scan("")

    expect(checkout.total).to eq(0)
  end

  it "gives a price of 50 for sku 'A'" do
    checkout = Checkout.new

    checkout.scan("A")

    expect(checkout.total).to eq(50)
  end

  it "gives a price of 30 for sku 'B'" do
    checkout = Checkout.new

    checkout.scan("B")

    expect(checkout.total).to eq(30)
  end

  it "gives a price of 20 for sku 'C'" do
    checkout = Checkout.new

    checkout.scan("C")

    expect(checkout.total).to eq(20)
  end

  it "gives a price of 15 for sku 'D'" do
    checkout = Checkout.new

    checkout.scan("D")

    expect(checkout.total).to eq(15)
  end
end