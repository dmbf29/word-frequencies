require_relative '../frequencies'
# {
#   'the' => 12,
#   'a' => 9
# }

describe "#word_counter" do
  it "should return empty hash if given empty string" do
    actual = word_counter('')
    expected = {}
    expect(actual).to eq(expected)
  end

  it "should return 1 for just one word" do
    actual = word_counter('beer')
    expected = { 'beer' => 1 }
    expect(actual).to eq(expected)
  end

  it "should count multiple words" do
    actual = word_counter('change your life. learn how to code. how how to')
    expect(actual['how']).to eq(3)
    expect(actual['to']).to eq(2)
    expect(actual['code']).to eq(1)
    expect(actual['beer']).to eq(nil)
  end
end
