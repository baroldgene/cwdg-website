class StaticPagesController < ApplicationController
  def home
    ## Next meeting date logic
    wday = 3  # Meetings are on Wednesdays
    today = Date.today
    this_wednesday = today.beginning_of_week.next_day(wday - 1)
    next_wednesday = today.next_week.next_day(wday - 1)

    @next_date = today.wday <= wday ? this_wednesday : next_wednesday
  end

  def about
  end
end
