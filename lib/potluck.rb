class Potluck

  attr_reader :date
  attr_accessor :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish.category == category
    end
  end

  def ratio(category)
    (get_all_from_category(category).count.to_f / @dishes.count.to_f).round(4) * 100
  end

  def menu
    @dishes.group_by do |dish|
      dish.category
    end
  end

end
