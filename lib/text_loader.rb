class TextLoader
  
  def self.load
    name = File.expand_path('../book.txt', __FILE__)
    File.open(name, 'r').each_line do |line|
      puts line
      arr = line.split ','
      b = Book.new(isbn: arr[0], title:arr[1], 
                   subject:arr[2], authors:arr[3], 
                   price:arr[4], stock:arr[5])
      if b.save 
        puts "Saved book: #{b.to_s}"
      else
        puts "Couldnt save :("
      end
    end
  end

end
    
