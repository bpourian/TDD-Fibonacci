class Fibonacci

  def fibo(n)
    arr =[]
    for i in 1..n
      arr << 1 if i == 1 || i == 2
      arr << (arr[i - 3] + arr[i - 2]) if i > 2
    end
    return arr.join(" ,")
  end
end
