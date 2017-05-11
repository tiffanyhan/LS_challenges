require 'pry'

class Anagram
  attr_reader :keyword, :formatted_keyword

  def initialize(keyword)
    @keyword = keyword.downcase
    @formatted_keyword = formatted_letters(keyword)
  end

  def match(test_words)
    test_words.select { |test_word| is_anagram?(test_word) }
  end

  private

  def is_anagram?(test_word)
    # downcase_test_word = test_word.downcase
    # return false if downcase_test_word.length != keyword.length || downcase_test_word == keyword

    # keyword_array = keyword.chars
    # downcase_test_word.chars.each do |char|
    #   return false unless keyword_array.include?(char)
    #   keyword_array.delete_at(keyword_array.find_index(char))
    # end
    # true
    formatted_test_word = formatted_letters(test_word)
    formatted_keyword == formatted_test_word && keyword != test_word.downcase
  end

  def formatted_letters(word)
    word.downcase.chars.sort
  end
end