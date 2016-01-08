require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @entered_word = params.fetch('word')
  @potential_matches = params.fetch('matching')
  @anagrams = @entered_word.check_for_anagrams( @potential_matches )
  erb(:anagram)
end
