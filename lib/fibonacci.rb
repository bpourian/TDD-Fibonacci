class Fibonacci
  attr_reader :existingArr

  def initialize
    @existingArr = []
  end


  def fibo(n)
    arr =[]

    if @existingArr.empty?
      @existingArr = create_new_array(n)

    elsif @existingArr.length >= n

      @existingArr = retrieve_fibonacci_from_memory(n, @existingArr)

    elsif @existingArr.length < n
      p 'Printing from memory'

      @existingArr = add_to_existing_fibonacci_and_return_arr(n, @existingArr)
    end

      @existingArr.join(" ,")
  end

  def create_new_array(n)
    arr =[]
    for i in 1..n
      arr << 1 if i == 1 || i == 2
      arr << (arr[i - 3] + arr[i - 2]) if i > 2
    end
    arr
  end

  def retrieve_fibonacci_from_memory(n, existingArr)
    return existingArr if existingArr.length == n
    return existingArr[0..n-1] if existingArr.length > n
  end

  def add_to_existing_fibonacci_and_return_arr(n, existingArr)
    length = existingArr.length
    arr = existingArr[(length - 2)..(length - 1)]

    itterateNumber = n - length

    for i in 3..(itterateNumber + 2)
      arr << (arr[i - 3] + arr[i - 2])
    end

    existingArr = existingArr[0..length - 3] + arr
  end
end
