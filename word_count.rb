class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    result = Hash.new(0)
    extract_words.each { |word| result[word] = result[word] + 1 }
    result
  end

  private

  def extract_words
    @phrase.split(/\s'+|'\s+|[^a-z0-9']+|\r?\n|\r+/);
  end
end