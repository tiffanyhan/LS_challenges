  require 'pry'

  class DNA
    attr_reader :base_strand

    def initialize base_strand
      @base_strand = base_strand.chars
    end

    def hamming_distance comparison_strand
      shorter_strand, longer_strand = [base_strand, comparison_strand.chars].sort_by(&:length)

      hamming_distance = 0
      shorter_strand.each_with_index do |letter, index|
        hamming_distance += 1 if letter != longer_strand[index]
      end
      hamming_distance
    end
  end