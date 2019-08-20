require "../lib/checkout"

RSpec.describe Checkout do
  it "gives a price of zero when passed an empty sku" do
    checkout = Checkout.new

    checkout.scan("")

    expect(checkout.total).to eq(0)
  end
end