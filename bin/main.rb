#!/usr/bin/env ruby
# frozen_string_literal: true

puts 'You are welcome to this TIC-TAC-TOE game'
puts 'Please state your name'
Player1 = gets.chomp.capitalize
puts "#{Player1},PLease pick your preferred letter,X or O"
tool1 = gets.chomp.upcase
until tool1=="X" || tool1=="O"
  puts "Please,pick either 'X' or 'O'?"
  tool1=gets.chomp.upcase
end
tool2 = tool1 == 'X' ? 'O' : 'X'
puts 'Second player,please state your name'
Player2 = gets.chomp.capitalize
until Player2!=Player1
  puts "That name has been taken,please pick another name"
  Player2=gets.chomp.capitalize
end
puts ""
puts "#{Player2},The first player chose '#{tool1}',so you are stuck with '#{tool2}' for this round"
puts ''
puts "Now that's out of the way,let the game begin"
puts ''
arr=[]
position1 = 10
game_on=true
while game_on
    puts "#{Player1}, What position would you like to make your move?, PLease pick a number between 0 and 10"
    position1 = gets.chomp.to_i
    until !arr.include? position1
      puts "That position is occupied,pls re-pick?"
      position1 = gets.chomp.to_i
    end
    arr << position1
      puts "Now your move with '#{tool1}' is displayed on the board"
    puts "#{Player2}, What position would you like to make your move?, PLease pick a number between 0 and 10"
    position2 = gets.chomp.to_i
    until !arr.include? position2
      puts "That position is occupied,pls re-pick?"
      position2 = gets.chomp.to_i
    end
      
      arr << position2
      puts "Now your move with '#{tool2}' is displayed on the board"
    
  
    if winner or turns_finished
  
      game_on = false
  
    end
  
end
