#array = [3,-5,-6,-9,1]
#array.sort {|b1,b2| b2<=>b1 }
#
#puts array.sort
#
#
#player = { 'Jack' => 3, 'Gary' => -5, 'Tom' => -6, 'Tiger' => -9, 'Phil' => 1 }
#
#puts player
#
#puts player.sort {|a1, b2|  a1[1]<=>b2[1] }

#scorecards.each do |scorecard| 
#  
#   [scorecard.hole_1,
#   scorecard.hole_2,
#   scorecard.hole_3,
#   scorecard.hole_4,
#   scorecard.hole_5,
#   scorecard.hole_6,
#   scorecard.hole_7,
#   scorecard.hole_8,
#   scorecard.hole_9,
#   scorecard.hole_10,
#   scorecard.hole_11,
#   scorecard.hole_12,
#   scorecard.hole_13,
#   scorecard.hole_14,
#   scorecard.hole_15,
#   scorecard.hole_16,
#   scorecard.hole_17,
#   scorecard.hole_18].sort {|b1,b2| b2<=>b1 }
#  
#end

hole_yardages = 0

1.upto(3) do |hole, hole_yardage|
    print ("Enter hole: ")
    hole = gets
    print ("Enter yardage: ")
    hole_yardage = gets
    puts "Hole "+ hole + "Yardage " + hole_yardage
    
    print ("Enter par: ")
    par = gets
    print("Enter score: ")
    score = gets
    result = Integer(score) - Integer(par)
    puts " You are #{result} to par "

    case result
    when 0
      puts  '<%= color(RED) %>'
    when 1
      puts 'Bogey'   
    when 2
      puts 'Double Bogey' 
    when 3
      puts 'Triple Bogey'
    when 4
      puts 'Quadruple Bogey'
    when -1
      puts 'Birdie'  
    when -2
        if par >= "4"
            puts 'Awesome an Eagle!!!'
        else  
            puts 'Hole in one!' 
            puts 'You just made an ACE! Holy Moly!!'
        end
    when -3
      puts 'Double Eagle'
    else
      puts "other"
    end
    
    
        while true
            print "Would you like to enter another hole? [y/n]: "
            case gets.strip
                when 'Y', 'y', 'yes' 
                puts 'next hole' 
                else /\A[nN]o?\Z/ 
                break 
            end
        end
    
   
end

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f, "purple" => 47 }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

hsh = highLightedScore = { "bogey" => 0xf00, "par" => 0x0f0, "birdie" => 0x00f, "eagle" => 47 }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end


:yardage_1,    
:yardage_2, 
:yardage_3,    
:yardage_4,    
:yardage_5,    
:yardage_6,    
:yardage_7,    
:yardage_8,    
:yardage_9,    
:yardage_10,    
:yardage_11,    
:yardage_12,    
:yardage_13,    
:yardage_14,    
:yardage_15,    
:yardage_16,    
:yardage_17,    
:yardage_18,     