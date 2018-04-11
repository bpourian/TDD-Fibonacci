class Fibonacci
  attr_reader :existingArr

  def initialize
    @existingArr = []
  end


  def fibo(n)
    arr =[]

    if @existingArr == []
      'inside first if'
      for i in 1..n
        arr << 1 if i == 1 || i == 2
        arr << (arr[i - 3] + arr[i - 2]) if i > 2
      end

      @existingArr = arr

    elsif @existingArr.length >= n
      "inside second if"
      return @existingArr.join(" ,") if @existingArr.length == n
      return @existingArr[0..n-1].join(" ,") if @existingArr.length > n

    elsif @existingArr.length < n
      'inside third else'
      length = @existingArr.length
      arr = @existingArr[(length - 2)..(length - 1)]

      itterateNumber = n - length

      for i in 3..(itterateNumber + 2)
        arr << (arr[i - 3] + arr[i - 2])
      end

      @existingArr = @existingArr[0..length - 3] + arr

    end

    return @existingArr.join(" ,")
  end
end
