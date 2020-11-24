require 'json'
require 'open-uri'

class GamesController < ApplicationController

  def new
    @letters = Array.new(10) { Array('A'..'Z').sample }.join
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params["word"]}"
    user_serialized = open(url).read
    @dictionary = JSON.parse(user_serialized)
    raise
  end

  def checking_if_include(word)
    word = word.split(//)
    word.each do |letter|
      if
        @letters.include?(letter) == true
      else
        return false
      end
      return true
    end
  end

# .all? qui marche sur un array le block que je passe cest la condition

word.split("").all? do |letter| 
  params["letters"].include?(letter)
end
end
 