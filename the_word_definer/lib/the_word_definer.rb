class Word
  @@all_words = []
  attr_accessor(:word, :definitions, :id)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @definitions = []
    @id = @@all_words.length + 1
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(@word)
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@all_words.each() do |word|
      if word.id == id
        found_word = word
      end
    end
    found_word
  end
end




class Definition
  @@all_definitions = []
  attr_accessor(:definition, :id)

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    @id = @@all_definitions.length + 1
  end

  define_singleton_method(:all) do
  @@all_definitions
  end

  define_method(:save) do
    @@all_definitions.push(@definition)
  end
end
