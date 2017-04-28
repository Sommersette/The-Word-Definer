require "the_word_definer"
require "rspec"
require "pry"


describe(Word) do
  before do
    Word.clear()
  end
  describe('#word') do
    it('returns the newly created word') do
    test_word = Word.new({:word => "monkey"})
    expect(test_word.word()).to(eq("monkey"))
    end
  end

  describe('#id') do
    it('returns the id for the newly created word') do
    test_word = Word.new({:word => "monkey"})
    expect(test_word.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns all of the words but is empty to start') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the newly created word to the all words array') do
      test_word = Word.new({:word => "monkey"})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('#add_definition') do
    it('saves a words definition to the definitions array') do
      test_word = Word.new({:word => "monkey"})
      test_definition = Definition.new({:definition => "an enlarged rabbit"})
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end

  describe('.find') do
    it('returns a specific word based on its id') do
      test_word = Word.new({:word => "monkey"})
      test_word.save()
      test_word2 = Word.new({:word => "hillbilly"})
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

  describe('.clear') do
    it('clears out the all_words array') do
      test_word = Word.new({:word => "monkey"})
      test_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

end


describe(Definition) do
  describe('#definition') do
    it('returns the definition of a word') do
    test_definition = Definition.new({:definition => "an enlarged rabbit"})
    expect(test_definition.definition()).to(eq("an enlarged rabbit"))
    end
  end

  describe('#id') do
    it('returns the id for the definition of a word') do
    test_definition = Definition.new({:definition => "an enlarged rabbit"})
    expect(test_definition.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns all of the definitions but is empty to start') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the newly created definition to the all definitions array') do
      test_definition = Definition.new({:definition => "an enlarged rabbit"})
      test_definition.save()
      expect(Definition.all()).to(eq(["an enlarged rabbit"]))
    end
  end
end
