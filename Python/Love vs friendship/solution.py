def words_to_marks(s):
  return sum(map(lambda x: ord(x) - 96, s))