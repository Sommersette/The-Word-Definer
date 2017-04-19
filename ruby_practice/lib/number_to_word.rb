class Fixnum
  define_method(:number_words) do
    ones = Hash.new()
    ones.store(1,"one")
    ones.store(2,"two")
    ones.store(3,"three")
    ones.store(4,"four")
    ones.store(5,"five")
    ones.store(6,"six")
    ones.store(7,"seven")
    ones.store(8,"eight")
    ones.store(9,"nine")

    teens = Hash.new()
    teens.store(10,"ten")
    teens.store(11,"eleven")
    teens.store(12,"twelve")
    teens.store(13,"thirteen")
    teens.store(14,"fourteen")
    teens.store(15,"fifteen")
    teens.store(16,"sixteen")
    teens.store(17,"seventeen")
    teens.store(18,"eighteen")
    teens.store(19,"nineteen")

    tens = Hash.new()
    tens.store(20,"twenty")
    tens.store(30,"thirty")
    tens.store(40,"forty")
    tens.store(50,"fifty")
    tens.store(60,"sixty")
    tens.store(70,"seventy")
    tens.store(80,"eighty")
    tens.store(90,"ninety")

    number = self.to_s.chars.map(&:to_i)
    answer = []

    if number[0] == 1 
      new_number = teens.invert().key(self)
      answer.push(new_number)

      elsif number[0] >= 2 && number[0] <= 9
      first_digit = number[0].*(10)
    end
    if first_digit = tens.invert().key(first_digit)
        second_digit = ones.invert().key(number[1])
        answer.push(first_digit.+(second_digit))
    end
    answer
  end
end
