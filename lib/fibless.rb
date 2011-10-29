#Fibless -- by Matt Holloway
class Fixnum
  #This will return the fibonacci sequence smaller than an integer passed in
  #usage is x.closest_fibonacci where x is an integer greater than 0
  def closest_fibonacci
    if self < 0
      return "Please enter a number of zero or greater, thanks"
    end
    #Three variables used for the sequence...
    fibCur = 0        #current number in the fib sequence
    fibNext = 1       #next number to add
    fibOut = fibCur   #number we will display

    while fibCur < self && self > 1
    	fibCur = fibNext + fibOut
    	fibOut = fibNext
    	fibNext = fibCur
    end
    #ta-da, return the result
    return fibOut
  end
end
