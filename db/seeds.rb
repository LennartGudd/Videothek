# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#admin
user = User.new
user.email = 'admin@video.de'
user.password = 'adminadmin'
user.password_confirmation = 'adminadmin'
user.name = 'admin'
user.firstname = 'admin'
user.birthday = '21.07.1991'
user.street = 'street'
user.city = 'city'
user.zipcode = '12345'
user.save!
user.add_role :admin

#testuser---------------------------------------------------------
user2 = User.new
user2.email = 'user@video.de'
user2.password = 'useruser'
user2.password_confirmation = 'useruser'
user2.name = 'user'
user2.firstname = 'user'
user2.birthday = '21.07.1991'
user2.street = 'street'
user2.city = 'city'
user2.zipcode = '12345'
user2.save!
user2.add_role :user

user3 = User.new
user3.email = 'video@video.de'
user3.password = 'videovideo'
user3.password_confirmation = 'videovideo'
user3.name = 'video'
user3.firstname = 'video'
user3.birthday = '21.07.1991'
user3.street = 'street'
user3.city = 'city'
user3.zipcode = '12345'
user3.save!
user3.add_role :user

#filme------------------------------------------------------------
film = Film.new
film.title = 'Die Verurteilten'
film.runtime = '142'
film.cover = 'http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_SX214_.jpg'
film.release_date = '1995-03-09'
film.plot = 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'
film.save!

film2 = Film.new
film2.title = 'Der Pate'
film2.runtime = '175'
film2.cover = 'http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX214_.jpg'
film2.release_date = '1972-08-24'
film2.plot = 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'
film2.save!

film3 = Film.new
film3.title = 'Der Pate 2'
film3.runtime = '200'
film3.cover = 'http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_SX214_.jpg'
film3.release_date = '1975-09-25'
film3.plot = 'The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on his crime syndicate stretching from Lake Tahoe, Nevada to pre-revolution 1958 Cuba.'
film3.save!

film4 = Film.new
film4.title = 'The Dark Knight'
film4.runtime = '152'
film4.cover = 'http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY317_CR0,0,214,317_.jpg'
film4.release_date = '2008-08-21'
film4.plot = 'When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level.'
film4.save!

film5 = Film.new
film5.title = 'Pulp Fiction'
film5.runtime = '154'
film5.cover = 'http://ia.media-imdb.com/images/M/MV5BMjE0ODk2NjczOV5BMl5BanBnXkFtZTYwNDQ0NDg4._V1_SY317_CR4,0,214,317_.jpg'
film5.release_date = '1994-11-03'
film5.plot = 'The lives of two mob hit men, a boxer, a gangsters wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'
film5.save!

film6 = Film.new
film6.title = 'Zwei glorreiche Halunken'
film6.runtime = '161'
film6.cover = 'http://ia.media-imdb.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_SX214_.jpg'
film6.release_date = '1967-12-15'
film6.plot = 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.'
film6.save!

film7 = Film.new
film7.title = 'Schindlers Liste'
film7.runtime = '195'
film7.cover = 'http://ia.media-imdb.com/images/M/MV5BMzMwMTM4MDU2N15BMl5BanBnXkFtZTgwMzQ0MjMxMDE@._V1_SX214_.jpg'
film7.release_date = '1994-03-03'
film7.plot = 'In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'
film7.save!

film8 = Film.new
film8.title = 'Die zwoelf Geschworenen'
film8.runtime = '96'
film8.cover = 'http://ia.media-imdb.com/images/M/MV5BODQwOTc5MDM2N15BMl5BanBnXkFtZTcwODQxNTEzNA@@._V1_SX214_.jpg'
film8.release_date = '1957-08-14'
film8.plot = 'A dissenting juror in a murder trial slowly manages to convince the others that the case is not as obviously clear as it seemed in court.'
film8.save!

film9 = Film.new
film9.title = 'Der Herr der Ringe - Die Rueckkehr des Koenigs'
film9.runtime = '201'
film9.cover = 'http://ia.media-imdb.com/images/M/MV5BMjE4MjA1NTAyMV5BMl5BanBnXkFtZTcwNzM1NDQyMQ@@._V1_SX214_.jpg'
film9.release_date = '2003-12-17'
film9.plot = 'Gandalf and Aragorn lead the World of Men against Saurons army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.'
film9.save!

film10 = Film.new
film10.title = 'Fight Club'
film10.runtime = '139'
film10.cover = 'http://ia.media-imdb.com/images/M/MV5BMjIwNTYzMzE1M15BMl5BanBnXkFtZTcwOTE5Mzg3OA@@._V1_SX214_.jpg'
film10.release_date = '1999-11-11'
film10.plot = 'An insomniac office worker looking for a way to change his life crosses paths with a devil-may-care soap maker and they form an underground fight club that evolves into something much, much more...'
film10.save!

#Comments---------------------------------------------------------
comment = Comment.new
comment.title = 'Super'
comment.comment = 'Der Film ist nur zu empfehlen!'
comment.commentable_id = '1'
comment.commentable_type = 'Film'
comment.user_id = '2'
comment.role = 'comments'
comment.save!

comment2 = Comment.new
comment2.title = 'Naja'
comment2.comment = 'Nicht so mein Fall.'
comment2.commentable_id = '2'
comment2.commentable_type = 'Film'
comment2.user_id = '3'
comment2.role = 'comments'
comment2.save!

comment3 = Comment.new
comment3.title = ''
comment3.comment = 'Mindestens genau so gut wie der erste Teil!'
comment3.commentable_id = '3'
comment3.commentable_type = 'Film'
comment3.user_id = '2'
comment3.role = 'comments'
comment3.save!

comment4 = Comment.new
comment4.title = 'warum?'
comment4.comment = 'Haette den Film nicht so hoch bewertet...'
comment4.commentable_id = '4'
comment4.commentable_type = 'Film'
comment4.user_id = '3'
comment4.role = 'comments'
comment4.save!

comment5 = Comment.new
comment5.title = '!!!'
comment5.comment = 'Aus jeden fall einer meiner Lieblingsfilme!'
comment5.commentable_id = '5'
comment5.commentable_type = 'Film'
comment5.user_id = '1'
comment5.role = 'comments'
comment5.save!

#actors-----------------------------------------------------------
actor = Actor.new
actor.id = '1'
actor.name = 'Tim Robbins'
actor.save!
filmactor = Filmactor
filmactor.film_id = '1'
filmactor.actor_id = '1'
filmactor.save!

actor2 = Actor.new
actor2.id = '2'
actor2.name = 'Morgan Freeman'
actor2.save!
filmactor2 = Filmactor
filmactor2.film_id = '1'
filmactor2.actor_id = '2'
filmactor2.save!

actor3 = Actor.new
actor3.id = '3'
actor3.name = 'Bob Gunton'
actor3.save!
filmactor3 = Filmactor
filmactor3.film_id = '1'
filmactor3.actor_id = '3'
filmactor3.save!

actor4 = Actor.new
actor4.id = '4'
actor4.name = 'Marlon Brando'
actor4.save!
filmactor4 = Filmactor
filmactor4.film_id = '2'
filmactor4.actor_id = '4'
filmactor4.save!

actor5 = Actor.new
actor5.id = '5'
actor5.name = 'Al Pacino'
actor5.save!
filmactor5 = Filmactor
filmactor5.film_id = '2'
filmactor5.film_id = '5'
filmactor5.save!
filmactor6 = Filmactor
filmactor6.film_id = '3'
filmactor6.actor_id = '5'
filmactor6.save!

actor6 = Actor.new
actor6.id = '6'
actor6.name = 'Robert De Niro'
actor6.save!
filmactor7 = Filmactor
filmactor7.film_id = '3'
filmactor7.actor_id = '6'
filmactor7.save!

actor7 = Actor.new
actor7.id = '7'
actor7.name = 'Christian Bale'
actor7.save!
filmactor8 = Filmactor
filmactor8.film_id = '4'
filmactor8.actor_id = '7'
filmactor8.save!

actor8 = Actor.new
actor8.id = '8'
actor8.name = 'Heath Ledger'
actor8.save!
filmactor9 = Filmactor
filmactor9.film_id = '4'
filmactor9.actor_id = '8'
filmactor9.save!

actor9 = Actor.new
actor9.id = '9'
actor9.name = 'John Travolta'
actor9.save!
filmactor10 = Filmactor
filmactor10.film_id = '5'
filmactor10.actor_id = '9'
filmactor10.save!

actor10 = Actor.new
actor10.id = '10'
actor10.name = 'Uma Thurman'
actor10.save!
filmactor11 = Filmactor
filmactor11.film_id = '5'
filmactor11.actor_id = '10'
filmactor11.save!

#regisseur--------------------------------------------------------
director = Director.new
director.id = '1'
director.name = 'Frank Darabont'
director.save!
filmdirector = Filmdirector.new
filmdirector.film_id = '1'
filmdirector.director_id = '1'
filmdirector.save!

director2 = Director.new
regisseur2.id = '2'
regisseur2.name = 'Francis Ford Coppola'
regisseur2.save!
filmdirector2 = Filmdirector.new
filmdirector2.film_id = '2'
filmdirector2.director_id = '2'
filmdirector2.save!
filmdirector3 = Filmdirector.new
filmdirector3.film_id = '3'
filmdirector3.director_id = '2'
filmdirector3.save!

director3 = Director.new
director3.id = '3'
director3.name = 'Christopher Nolan'
director3.save!
filmdirector4 = Filmdirector.new
filmdirector4.film_id = '4'
filmdirector4.director_id = '3'
filmdirector4.save!

director4 = Director.new
director4.id = '4'
director4.name = 'Quentin Tarantino'
director4.save!
filmdirector5 = Filmdirector.new
filmdirector5.film_id = '5'
filmdirector5.director_id = '4'
filmdirector5.save!

director5 = Director.new
director5.id = '5'
director5.name = 'Sergio Leone'
director5.save!
filmdirector6 = Filmdirector.new
filmdirector6.film_id = '6'
filmdirector6.director_id = '5'
filmdirector6.save!

director6 = Director.new
director6.id = '6'
director6.name = 'Steven Spielberg'
director6.save!
filmdirector7 = Filmdirector.new
filmdirector7.film_id = '7'
filmdirector7.director_id = '6'
filmdirector7.save!

#category---------------------------------------------------------
category = Category.new
category.id = '1'
category.name = 'Crime'
category.save!

category2 = Category.new
category2.id = '2'
category2.name = 'Drama'
category2.save!

category3 = Category.new
category3.id = '3'
category3.name = 'Action'
category3.save!

category4 = Category.new
category4.id = '4'
category4.name = 'Thriller'
category4.save!

category5 = Category.new
category5.id = '5'
category5.name = 'Adventure'
category5.save!

category6 = Category.new
category6.id = '6'
category6.name = 'Western'
category6.save!

category7 = Category.new
category7.id = '7'
category7.name = 'Biography'
category7.save!

category8 = Category.new
category8.id = '8'
category8.name = 'History'
category8.save!

category9 = Category.new
category9.id = '9'
category9.name = 'Fantasy'
category9.save!

filmcategory = Filmcategory.new
filmcategory.film_id = '1'
filmcategory.category_id = '1'
filmcategory.save!

filmcategory2 = Filmcategory.new
filmcategory2.film_id = '1'
filmcategory2.category_id = '2'
filmcategory2.save!

filmcategory3 = Filmcategory.new
filmcategory3.film_id = '2'
filmcategory3.category_id = '1'
filmcategory3.save!

filmcategory4 = Filmcategory.new
filmcategory4.film_id = '2'
filmcategory4.category_id = '2'
filmcategory4.save!

filmcategory5 = Filmcategory.new
filmcategory5.film_id = '3'
filmcategory5.category_id = '1'
filmcategory5.save!

filmcategory6 = Filmcategory.new
filmcategory6.film_id = '3'
filmcategory6.category_id = '2'
filmcategory6.save!

filmcategory7 = Filmcategory.new
filmcategory7.film_id = '4'
filmcategory7.category_id = '1'
filmcategory7.save!

filmcategory8 = Filmcategory.new
filmcategory8.film_id = '4'
filmcategory8.category_id = '2'
filmcategory8.save!

filmcategory9 = Filmcategory.new
filmcategory9.film_id = '4'
filmcategory9.category_id = '3'
filmcategory9.save!

filmcategory10 = Filmcategory.new
filmcategory10.film_id = '5'
filmcategory10.category_id = '1'
filmcategory10.save!

filmcategory11 = Filmcategory.new
filmcategory11.film_id = '5'
filmcategory11.category_id = '2'
filmcategory11.save!

filmcategory12 = Filmcategory.new
filmcategory12.film_id = '5'
filmcategory12.category_id = '4'
filmcategory12.save!

filmcategory13 = Filmcategory.new
filmcategory13.film_id = '6'
filmcategory13.category_id = '5'
filmcategory13.save!

filmcategory14 = Filmcategory.new
filmcategory14.film_id = '6'
filmcategory14.category_id = '6'
filmcategory14.save!

filmcategory15 = Filmcategory.new
filmcategory15.film_id = '7'
filmcategory15.category_id = '7'
filmcategory15.save!

filmcategory16 = Filmcategory.new
filmcategory16.film_id = '7'
filmcategory16.category_id = '8'
filmcategory16.save!

filmcategory17 = Filmcategory.new
filmcategory17.film_id = '7'
filmcategory17.category_id = '2'
filmcategory17.save!

filmcategor18 = Filmcategory.new
filmcategory18.film_id = '8'
filmcategory18.category_id = '2'
filmcategory18.save!

filmcategory19 = Filmcategory.new
filmcategory19.film_id = '9'
filmcategory19.category_id = '9'
filmcategory19.save!

filmcategory20 = Filmcategory.new
filmcategory20.film_id = '9'
filmcategory20.category_id = '5'
filmcategory20.save!

filmcategory21 = Filmcategory.new
filmcategory21.film_id = '9'
filmcategory21.category_id = '3'
filmcategory21.save!

filmcategory22 = Filmcategory.new
filmcategory22.film_id = '10'
filmcategory22.category_id = '2'
filmcategory22.save!

#ratings not able to write constant rating_cache-----------------
#rate = Rate.new
#rate.rater_id = '2'
#rate.rateable_id = '1'
#rate.rateable_type = 'Film'
#rate.stars = 5.0
#rate.dimension = 'rating'
#rate.save!

#rate2 = Rate.new
#rate2.rater_id = '1'
#rate2.rateable_id = '1'
#rate2.rateable_type = 'Film'
#rate2.stars = 4.0
#rate2.dimension = 'rating'
#rate2.save!

#rating_cache = Rating_cache.new
#rating_cache.id = '1'
#rating_cache.cacheable_id = '1'
#rating_cache.cacheable_type = 'Film'
#rating_cache.avg = '4.5'
#rating_cache.qty = '2'
#rating_cache.dimension = 'rating'
#rating_cache.created_at = '2014-02-24'
#rating_cache.updated_at = '2014-02-24'
#rating_cache.save!
