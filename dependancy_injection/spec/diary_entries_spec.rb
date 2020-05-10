require 'diary_entries'

describe Diary do
  # let (:add) { double :entry_adder, format: "first entry\nHere it is!" }
 
  describe ".index" do
    it "increments by 1" do
      diary = Diary.new
      diary.add('first entry', 'first entry\nHere it is!')
      expect(diary.index).to eq "first entry"
    end
  end
end

describe Entry do
  describe "#entry" do
    it "should know its title and body" do
      entry= double :entry, title: 'first entry', body: 'here is the first body of my entry'
      expect(entry.title).to eq "first entry"
      expect(entry.body).to eq "here is the first body of my entry"
    end
  end
end