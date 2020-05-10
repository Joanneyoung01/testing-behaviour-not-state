require 'note'

describe Note do
  let(:format) { double :formatter, format: "Title: My note\nRemeber dependency injection" }

  describe '#display' do
    it 'formats a note' do
      note = Note.new('My note', 'Remeber dependency injection', format)

      expect(note.display).to eq "Title: My note\nRemeber dependency injection"
    end
  end
end

describe NoteFormatter do
  describe '#note' do
    it 'formats a note' do
      note = double :note, title: 'My note', body: 'Dependency Injection'

      expect(subject.format(note)).to eq "Title: My note\nDependency Injection"
    end
  end
end

