require 'json'
require 'pry'

class EighthLvl
  def initialize question
    @question = ' ' + question
    @length_string = JSON.parse(load_file('length_string'))
    @length_array = @length_string[@question.size.to_s]
  end

  def load_file name
    file = File.read("lib/#{name}.json")
  end

  def search
  	question_sotr = @question.split("").sort.join
  	ans = ''
    @length_array.each do |str|
      if str == question_sotr
      	ans = str
      end
    end
    #binding.pry
    SixthLvl.new(ans[1..-1]).search
  end

end