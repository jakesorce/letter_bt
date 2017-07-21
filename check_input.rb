class CheckInput

  def initialize(inp)
    begin
      inp = inp.downcase

      if inp.empty?
        puts 'Entry was empty.'.red
				puts ' '
      end
    rescue
    end

    case inp.to_s
	    when 'quit', 'q'
	      puts 'Quitting, thank you come again.'.light_blue
	      exit
    end
  end
end
