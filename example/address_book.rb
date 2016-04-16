class AddressBook
  load ("operations_address_book.rb")
  @@operations_address_book=OperationsAddressBook.new

  def showMenu
    begin
      puts "\tMenu"
      puts "a.- Aregar "
      puts "b.- Buscar "
      puts "c.- Actualizar "
      puts "e.- Eliminar "
      puts "l.- Listas "
      puts "s.- Salir "
      print "Selecciona una opcion: "
      
      option_user = gets()

      if option_user=="a\n" then
        begin
          @@operations_address_book.add_information_book()
          print "Desea continuar, presiona 1.si 2.no: "
          continue=gets()
        end until continue.to_i==2 
      end
      
      if option_user=="l\n" then
        @@operations_address_book.show_information_book()
      end
      
      if option_user== "b\n" then
        print "Nombre a buscar: "
        name= gets.chomp
        print "Apellido a buscar: "
        last_name= gets.chomp
        @@operations_address_book.search_information_book(name,last_name)
      end

      if option_user=="e\n" then
        print "Nombre a eliminar: "
        name=gets()
        print "Apellido: "
        last_name=gets()
        @@operations_address_book.delete_information_book(name.chomp,last_name.chomp)
      end
      
      if option_user=="c\n" then
        print "Nombre a modificar: "
        name=gets()
        print "Apellido: "
        last_name=gets()
        @@operations_address_book.update_information_book(name.chomp,last_name.chomp)
      end
    end while option_user != "s\n" 
  end
end

addressBook=AddressBook.new
addressBook.showMenu()
