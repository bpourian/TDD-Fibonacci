require './lib/fibonacci'

describe  Fibonacci do
  subject(:fibonacci)          { described_class.new }

  describe '#fibo' do
    it "Should return all the fibonacci numbers up to n = 4" do
      expect(fibonacci.fibo(4)).to eq("1 ,1 ,2 ,3")
    end

    it "Should return fibonacci from memory and not compute" do
      fibonacci.fibo(4)
      expect(fibonacci.fibo(4)).to eq("1 ,1 ,2 ,3")
    end

    it "Should add to existing fibonacci and return" do
      fibonacci.fibo(4)
      expect(fibonacci.fibo(5)).to eq("1 ,1 ,2 ,3 ,5")
    end
  end

  describe '#create_new_array' do
    it "Should create new array" do
      expect(fibonacci.create_new_array(4)).to eq([1 ,1 ,2 ,3])
    end
  end

  describe '#retrieve_fibonacci_from_memory' do
    it "Return fibonacci from memory and not compute" do
      existingArr = [1 ,1 ,2 ,3]
      expect(fibonacci.retrieve_fibonacci_from_memory(4, existingArr)).to eq([1 ,1 ,2 ,3])
    end
  end

  describe '#add_to_existing_fibonacci_and_return' do
    it "Add to existing fibonacci and return" do
      existingArr = [1 ,1 ,2 ,3]
      expect(fibonacci.add_to_existing_fibonacci_and_return_arr(5, existingArr)).to eq([1 ,1 ,2 ,3, 5])
    end
  end
end
