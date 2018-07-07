def is_admin?(user)
  user[:role] == 'admin'
end

def is_moderator?(user)
  user[:role] == 'moderator'
end

def display_user_role(user)
  print "#{user[:name]} is "

  if is_admin?(user)
    print "administrator"
  elsif is_moderator?(user)
    print "moderator"
  else
    print "not super user"
  end

  print "\n"
end

def display_users_role(users)

  n = users.length
  n.times { |i| display_user_role(users[i]) }
# n.times wywołuje powtarzalność elementów tablicy lub jakićhkolwiek określonych elementów
# np 10.times powtarza pętlę 10 razy
end

def display_user_role2(users)

users.each { |user| display_user_role(user) }
#podpisuje się do każdego z elemantów i przechodzi przez niego i robi coś z każdym z nich
#dostajesz cały element z tablicy, kolekcji

end



users = [
  { :name => 'Janek', :role => 'admin'},
  { :name => 'Rysiek', :role => 'moderator'},
  { :name => 'Franek', :role => 'standard_user' }
]

display_users_role(users)


puts users.any? { |user| is_admin?(user) }
#czy jest jakikolwiek użytkownik który jest adminem
