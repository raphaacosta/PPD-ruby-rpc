require 'drb/drb'

URI="druby://localhost:3000";

class Verify
  def is_even(n)
    n % 2 == 0;
  end
end


DRb.start_service(URI, Verify.new);
puts 'Server Started'
DRb.thread.join