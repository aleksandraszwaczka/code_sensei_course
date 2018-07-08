class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def welcome(user)
    puts "Welcome #{user, name}!"
    hello(self)





    #metoda protekted pozwala na dostęp użytkownikom tej samej klasy (tu users)
