# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_accessor :target

    def initialize(target)
        @target = target
    end

    def number
        prime = self.target
            (2..Math.sqrt(self.target).to_i).each do |i|
                # Here we use the square root function to cut our range down drastically
              break if prime <= 1
              while (prime > i && prime % i == 0) do
                prime /= i
                puts "prime - #{prime}, i - #{i}"
              end
            end
            prime
    end            
end
