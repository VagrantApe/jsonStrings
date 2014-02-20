class WordsController < ApplicationController

  def anagram
    ana = params[:word1].downcase.chars.sort == params[:word2].downcase.chars.sort
    render json: {is_it_an_anagram: ana, word1: params[:word1], word2: params[:word2]}
  end

  def palindrome
    pal = params[:word1].downcase == params[:word2].downcase.reverse
    render json: {is_it_a_palindrome: pal, word1: params[:word1], word2: params[:word2]}
  end
end
