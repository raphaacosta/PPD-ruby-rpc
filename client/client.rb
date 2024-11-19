require 'drb/drb'

SERVER_URI="druby://localhost:3000";

DRb.start_service

verify = DRbObject.new_with_uri(SERVER_URI);
puts verify.is_even(3)