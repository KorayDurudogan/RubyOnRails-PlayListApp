class UserProvider < DataProvider

  def initialize
    super "app/data/user_data.csv"
  end

  def getData
    users = super
    arr = Array.new

    users.each do |user|
      if user == users.first then next end

      newUser = User.new(user[0])
      newUser.first_name = user[1]
      newUser.last_name = user[2]
      newUser.email = user[3]
      newUser.user_name = user[4]
      arr.push(newUser)
    end

    return arr
  end
end
