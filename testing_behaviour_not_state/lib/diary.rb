class Diary

  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(title, body)
    @entries << { title: title, body: body }
    :ok
  end

  def print_entries
    @entries.each do |title, body| 
    puts "Title: #{title}, Body: #{body}"
    end.join.to_s
  end
end