require 'diary'

#testings state
# RSpec.describe Diary do
#   describe "#initialize" do
#     it "initialises with zero entries" do
#       diary = Diary.new
#       expect(diary.entries).to eq []
#     end
#   end

#   describe "#add_entry" do
#     it "adds an entry to the list" do
#       diary = Diary.new
#       diary.add_entry("hello", "world")
#       first_entry = diary.entries.first
#       expect(first_entry[:title]).to eq "hello"
#       expect(first_entry[:body]).to eq "world"
#     end
#   end
# end

#testing behaviour
RSpec.describe Diary do
  describe "#add_entry" do
    it "adds an entry that can be read later" do
      diary = Diary.new
      diary.add_entry("hello", "world")
      expect(diary.print_entries).to eq "Title: hello, Body: world"
    end
  end
end
