super_users = [{ :name => 'Janek', :role => 'admin'},
   { :name => 'Rysiek', :role => 'moderator'},
    { :name => 'Tomek', :role => 'admin'},
   { :name => 'Stanisław', :role => 'moderator'},
    { :name => 'Beata', :role => 'stand_user'}]


    grouped_users = super_users.group_by { |super_user| super_user[:role] }
  puts  grouped_users.transform_values { |array| array.map { |hash| hash[:name]  } }

  #{"admin"=>["Janek", "Tomek"], "moderator"=>["Rysiek", "Stanisław"], "stand_user"=>["Beata"]}
# bierze hasha i przypisuje do niego imię
