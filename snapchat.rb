require "io/console"
class User
  attr_accessor = :username, :password
  def initialize
#     puts "Username:"
#     username = gets.chomp
#     @username = username
#     puts "Password:"
#     password = gets.chomp
#     @password = password
  end
  def username
    @username
  end
  def set_username
    puts "Username:"
    username = gets.chomp
    @username = username
  end
  def set_password
    puts "Password:"
    STDIN.noecho(&:gets).chomp
    password = gets.chomp
    @password = password
  end
end

user1 = User.new
user1.set_username
user1.set_password
user2 = User.new

picture_sent = ""
sent_pics = "no"

puts "Would you like to upload a picture?"
answer = gets.chomp.downcase
if answer == "yes"
  puts "Type the filename of the picture"
  filename = gets.chomp
  puts "Who would like to send this picture to?"
  recipients = gets.chomp
  if recipients == "Eric"
  puts "Picture sent to Eric!"
    picture_sent = filename
    sent_pics = "yes"
  else
    puts "Picture sent to #{recipients.capitalize}!"
  end
else
end
login_tries = 0
user2_login = "false"
puts "Would you like to switch to the User 2 account?"
answer = gets.chomp.downcase
if answer == "yes"
while user2_login == "false" && login_tries < 4
  puts "Username:"
  username_try = gets.chomp
  puts "Password:"
  STDIN.noecho(&:gets).chomp
  password_try = gets.chomp
  if username_try == "Eric" && password_try == "..."
    user2_login = "true"
    if sent_pics == "yes"
      puts "You have been sent #{picture_sent} by #{user1.username}!"
    else
      puts "You have no new pictures."
    end
  else
    puts "Password Incorrect. Try again."
    login_tries = login_tries + 1
  end
end
else
end
if login_tries >= 4
  puts "Login failed 5 times. Try again later."
else
end