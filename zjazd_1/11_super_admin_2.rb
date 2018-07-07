super_user = [ { :name => 'Janek', :role => 'admin'},
   { :name => 'Rysiek', :role => 'moderator'}
 ]

def is_admin?(user)
  super_user[:role] == 'admin'
end

def is_moderator?(user)
  super_user[:role] == 'moderator'
end

def display_user_role(user)
  print "#{user[:name]} is"

  if is_admin?(user)
    print "administrator"
