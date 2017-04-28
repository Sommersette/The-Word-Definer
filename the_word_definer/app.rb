require 'sinatra'
require 'sinatra/reloader'
require './lib/the_word_definer'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  @all_words = Word.all()
  erb(:index)
end

get('/:id') do
   @word = Word.find(params.fetch('id').to_i())


   erb(:word)
end

get('/:id/definition/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:add_definition_form)
end

post('/definitions') do
  definition = params.fetch('definition')
  attributes = {:definition => definition}
  new_definition = Definition.new(attributes)
  new_definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(new_definition)
  erb(:success)
end


post('/word/new') do
  word = params.fetch('word')
  attributes = {:word => word}
  Word.new(attributes).save()
  @all_words = Word.all()
  erb(:index)
end

get('/word/new') do
  erb(:add_word_form)
end
