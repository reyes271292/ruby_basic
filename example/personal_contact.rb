class PersonalContact
  attr_reader :name
  @name;@last_name;@telephone;@e_mail

  def initialize(name,last_name,telephone,e_mail)
    @name=name
    @last_name=last_name
    @telephone=telephone
    @e_mail=e_mail
  end
  
  def showPersonalContact()
    puts ""
    puts "Datos del contacto: "
    puts "nombre: "+@name
    puts "apellido: "+@last_name 
    puts "telefono: "+@telephone
    puts "e_mail: "+@e_mail
  end
end