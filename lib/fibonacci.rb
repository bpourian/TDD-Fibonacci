class Fibonacci

  def fibo(n)
    existingArr = []
    arr =[]

    if existingArr.length >= n
      return existingArr if existingArr.length == n
      return existingArr[0..n-1] if existingArr.length > n
    else
      for i in 1..n
        arr << 1 if i == 1 || i == 2
        arr << (arr[i - 3] + arr[i - 2]) if i > 2
      end
    end
    existingArr = arr
    return existingArr.join(" ,")
  end
end
