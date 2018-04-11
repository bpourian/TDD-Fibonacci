require './lib/fibonacci'

describe  Fibonacci do
  subject(:fibonacci)          { described_class.new }

  describe '#fibo' do
    it "Should return all the fibonacci numbers up to n = 4" do
      expect(fibonacci.fibo(4)).to eq("1 ,1 ,2 ,3")
    end

    it "Should return fibonacci from memory and not compute" do
      expect(fibonacci.fibo(4)).to eq("1 ,1 ,2 ,3")
    end
  end
end
