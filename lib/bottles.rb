class Bottles
  def song
    verses(99, 0)
  end

  def verses(start_count, end_count)
    start_count.downto(end_count).map do |n|
      verse(n)
    end.join("\n")
  end

  def verse(n)
    return <<-VERSE
#{bottle_count(n).capitalize} of beer on the wall, #{bottle_count(n)} of beer.
#{instruction(n)}, #{bottle_count(number_after(n))} of beer on the wall.
VERSE
  end

  def bottle_count(n)
    if n == 1
      '1 bottle'
    elsif n == 0
      'no more bottles'
    else
      "#{n} bottles"
    end
  end

  def number_after(n)
    n == 0 ? 99 : n - 1
  end

  def instruction(n)
    if n == 0
      "Go to the store and buy some more"
    elsif n == 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end
end