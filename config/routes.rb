JsonStrings::Application.routes.draw do
  get "/ana/:word1&:word2", to: 'words#anagram'
  get "/pal/:word1&:word2", to: 'words#palindrome'
end
