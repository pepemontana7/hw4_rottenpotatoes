# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
   
     Movie.create!(movie)
  end

  assert movies_table.hashes.size == Movie.all.count
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
   # express the regexp above with the code you wish you had
   movie = Movie.find_by_title(arg1)
   assert movie.director == arg2
end
