class Point(object):
    def __init__(self, x, y):
        self.x = None
        self.y = None

    def __eq__(self, other):
        return self.x == other.x and self.y == other.y


class WordSearch(object):
    def __init__(self, puzzle):
        self.puzzle = puzzle

    def search(self, word):
        first_letter = word[0]
        last_letter = word[-1]

        puzzle_word = self.puzzle[0]

        try:
            start = puzzle_word.index(first_letter)
            end = puzzle_word.index(last_letter)
        except(ValueError):
            return None


        return (Point(start, 0), Point(end, 0))
