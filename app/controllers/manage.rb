require 'pry'

class Manage
  def initialize (params)
    @question = params[:question]
    @id = params[:id]
    @level = params[:level]
  end

  def level_manage
    case @level
    when '1'
      @first_lvl = FirstLvl.new(@question)
      @first_lvl.search
    end
  end
end