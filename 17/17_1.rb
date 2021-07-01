require 'open-uri'
require "json"
require "date"

class Work_calendar
  attr_reader :holidays, :preholidays
  def initialize(current_year)
    url = 'https://raw.githubusercontent.com/d10xa/holidays-calendar/master/json/calendar.json'
    page = URI.open(url)
    text = JSON.parse(page.read)
    @holidays = text["holidays"].find_all{|day| day.include?(current_year)}
    @preholidays = text["preholidays"].find_all{|day| day.include?(current_year)}
  end

  def weekend?
    Time.now.saturday? || Time.now.sunday?
  end

  def preholiday?
    @preholidays.include?(current_day)
  end

  def holiday?
    @holidays.include?(current_day)
  end

  def current_day
    Time.now.strftime("%Y-%m-%d")
  end

  def to_s
    "Список выходных и праздничных дней:\n#{@holidays.map{|day| Date.parse(day).strftime("%d %b").downcase}.join(",")},\nCписок предпраздничных дней:\n#{@preholidays.map{|day| Date.parse(day).strftime("%d %b").downcase}.join(",")}"
  end
end

puts "Введите год"
year = STDIN.gets.chomp
work_calendar_2021 = Work_calendar.new(year)
print work_calendar_2021
puts
print "\nСегодня: #{work_calendar_2021.current_day} - "

puts "Выходной" if work_calendar_2021.holiday?
puts "Предпраздничный" if work_calendar_2021.preholiday?
puts "Не выходной" unless work_calendar_2021.holiday?
