require 'json'
require 'pry'

class FirstLvl
  def initialize question
    @question = question
    @@lvl1 ||= JSON.parse(load_file('1lvl'))
  end

  def load_file name
    file = File.read("lib/#{name}.json")
  end

  def search 
  	#binding.pry
  	words = @question.split(/\s|,| |\.|\?|!|:|;|\(|\)|-|—|"/)
    @@lvl1[words.join]  
  end
end
