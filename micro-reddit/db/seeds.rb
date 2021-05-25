# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
p "Authors Destroy"

Author.create([
	{username: 'John Apple' , email: 'john_apple@xyz.com.br', password: '123456'}, 
	{username: 'Paul Carrot' , email: 'paul_carrot@xyz.com.br', password: '123456'}, 
	{username: 'Peter Paker' , email: 'peter_paker@xyz.com.br', password: '123456'}
])

p "Created #{Author.count} Authors"

Post.destroy_all
p "Post Destroy"

Post.create([
	{title: 'Aprendendo Ruby', body: 'Basico ao Avancado', author_id: 1 }, 
	{title: 'Aprendendo Java', body: 'Basico ao Avancado', author_id: 1 }, 
	{title: 'Aprendendo NodeJs', body: 'Basico ao Avancado', author_id: 2 }, 
])
p "Created #{Post.count} Post"

Comment.destroy_all
p "Comment Destroy"
Comment.create([
	{body: 'Esse livro é otimo', author_id: 1, post_id: 1 }, 
	{body: 'Otimo autor', author_id: 1, post_id: 1 }, 
	{body: 'Recomendo esse livro', author_id: 1, post_id: 1 },
])
p "Created #{Comment.count} Comment"