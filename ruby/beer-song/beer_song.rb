class BeerSong
  def verses(start, finish)
    start.downto(finish).map do |bottles|
      verse(bottles)
    end.join("\n")
  end

  def verse(bottles_remaining)
    case bottles_remaining
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{bottles_remaining} bottles of beer on the wall, #{bottles_remaining} bottles of beer.\n" +
      "Take one down and pass it around, #{bottles_remaining - 1} bottles of beer on the wall.\n"
    end
  end
end

module BookKeeping
  VERSION = 3
end
