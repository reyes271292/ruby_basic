class OperationsAddressBook
  load("personal_contact.rb")
  $contact=[]
  def add_information_book
    puts ""
    print "Nombre: "
    name = gets.chomp
    print "Apellido: "
    last_name = gets.chomp
    print "Telefono: "
    telephone = gets.chomp
    print "E_mail: "
    e_mail = gets.chomp
    
    File.open("agenda.txt","a") do |x|
      x.puts name+","+last_name+","+telephone+","+e_mail
    end
    
    $contact<<PersonalContact.new(name,last_name, telephone, e_mail)
    
  end 
  
  def show_information_book()
    File.open("agenda.txt","r") do |x|
      while linea=x.gets
        puts linea
      end
    end
  end
  
  def search_information_book(name,last_name)
    existContact = true
    numberLine=0
    File.open("agenda.txt","r") do |x|
      while @linea=x.gets
        numberLine = numberLine + 1
        dataFound=@linea.split(',')
        if name==dataFound[0] and last_name==dataFound[1]
          print "Registro: ", numberLine, ".- ", dataFound[0], " ", dataFound[1]," ", dataFound[2]," ",dataFound[3]
        end
      end
      if existContact == false
        print "Contacto no existe"
      end
    end
    
  end
  def delete_information_book(name,last_name)
    existContact = true
    numberLine=0
    File.open("agenda.txt","r") do |x|
      while @linea=x.gets
        numberLine = numberLine + 1
        dataFound=@linea.split(',')
        if name==dataFound[0] and last_name==dataFound[1]
          print "Registro: ", numberLine, ")", dataFound[0], " ", dataFound[1]," ", dataFound[2]," ",dataFound[3]
        end
      end
      
      if existContact == false
        print "contacto no encontrado ..."
      elsif
        begin 
          numberLine=0
          puts "Que regristro quiere eliminar?"
          registro=gets.chomp
          
          File.open("agenda.txt","r") do |x|
            while @linea=x.gets
              numberLine+=1
              if (registro.to_i!=numberLine)
                begin
                  File.open("agenda1.txt","a") do |op|
                    op.puts @linea
                  end
                  puts @linea
                end
              end
            end
          end
        end
        File.delete("agenda.txt")
        File.rename("agenda1.txt","agenda.txt")
      end
    end

    File.delete("agenda.txt")
    File.rename("agenda1.txt","agenda.txt")
    
  end
  
  def update_information_book(name,last_name)
    encontrado = true
    nlinea=0
    $op
    File.open("agenda.txt","r") do |x|
      while @linea=x.gets
        nlinea = nlinea + 1
        dataFound=@linea.split(',')
        if name==dataFound[0] and last_name==dataFound[1]
          print "Registro: ", nlinea, ")", dataFound[0], " ", dataFound[1]," ", dataFound[2]," ",dataFound[3]
        end
      end
      
      if encontrado == false
        print "contacto no encontrado ..."
      elsif
        begin 
          nLinea=0
          puts "Que registro quiere modificar?"
          registro=gets.chomp
         File.open("agenda.txt","r") do |x|
            while @linea=x.gets
              nLinea+=1
              if (registro.to_i!=nLinea)
                begin
                  File.open("agenda1.txt","a") do |op|
                    op.puts @linea
                  end
                  puts @linea
                end
              else
                dataFound=@linea.split(',')
                  print "ingresa nombre "
                  dataFound[0]= gets.chomp
                  print "ingresa apellido "
                  dataFound[1]= gets.chomp
                  print "ingresa telefono: "
                  dataFound[2]= gets.chomp
                  print "ingresa e_mail: "
                  dataFound[3]= gets.chomp
                li=dataFound[0]+","+dataFound[1]+","+dataFound[2]+","+dataFound[3]+"\n"
                print li
                File.open("agenda1.txt","a") do |op|
                    op.print li
                end
              end
            end
          end
        end
      end
    end
    File.delete("agenda.txt")
    File.rename("agenda1.txt","agenda.txt")
  end

end

