require 'sinatra'
require 'sinatra/reloader'
require './lib/the_word_definer'
require 'pry'

also_reload('lib/**/*.rb')

# # get('/:id') do
# #   @word = Word.find
# #   erb(:index)
# # end
#
#
#
# post('/word/new') do
#   word = params.fetch('word')
#   attributes = {:word => word}
#   @new_word = Word.new(attributes)
#   @new_word.save()
#   @all_words = Word.all()
#   erb(:index)
# end
#
# get('/word/new') do
#   erb(:add_word_form)
# end
