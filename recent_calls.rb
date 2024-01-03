class RecentCounter
    def initialize()
      @counter = []
    end
  
    # :type t: Integer
    # :rtype: Integer
    def ping(t)
      @counter.push(t)
  
      # Remove requests that fall outside the time frame
      @counter.shift while @counter.first < t - 3000
  
      # Return the number of requests within the last 3000 milliseconds
      @counter.length
    end
end
