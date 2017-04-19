require('rspec')
require('number_to_word')

describe('Fixnum#number_words') do
  it('will take a number between 1 and 10 and return the number spelled out as a word') do
    expect((5).number_words()).to(eq(["five"]))
  end
  it('will take a number between 1 and 99 and return the number spelled out as a word') do
    expect((55).number_words()).to(eq(["fiftyfive"]))
  end
end
