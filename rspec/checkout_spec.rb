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
end