require 'pry'
require 'time'

class Event

  attr_accessor :start_date
  @@attendees_list = []
  
  def initialize(start_date, duration_time, event_title, email_to_save)
    @start_date = Time.parse("#{start_date}")
    @duration = duration_time
    @title = event_title
    @email = email_to_save
    #@@attendees_list = @@attendees_list << @email_to_save

  end


  def postpone_24
    postpone_date = @start_date + 24 * 3600
  end

  def end_date
    end_date = @start_date + @duration *60
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    Time.now < @start_date
  end

  def is_soon?
    @start_date - 1800 <= Time.now  
  end

  def presentation
    print '>'
    puts "Titre : #{@title}"
    print '>'
    puts "Date de début : #{@start_date}"
    print '>'
    puts "Durée : #{@duration} minutes"
    print '>'
    puts "invités : #{@email.map {|i| + i.to_s}.join(", ")}"
    #puts "invités : #{@email}"
  end

  #def self_all
    #return @@attendees
  #end

end
  binding.pry
  puts "end of file"
