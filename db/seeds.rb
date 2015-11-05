# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

users = [{
	name: "Jessica",
	email: "jess@email.com",
	password: "abc123"
}, {
	name: "Joesica",
	email: "joesica@email.com",
	password: "abc123"	
}, {
	name: "Jess",
	email: "jess12@gmail.com",
	password: "abc123"
}, {
	name: "Joey",
	email: "joey@email.com",
	password: "abc123"
	}]

User.create users

Chick.destroy_all

chicks = [{
	user_id: 2,
	name: "Lisbeth Salander",
	image_uri: "https://bullybloggers.files.wordpress.com/2010/08/lisbeth-salander-31.jpg",
	category: "Books, Film",
	text: "Main character of the Girl with the Dragon Tattoo trilogy."
}, {
	user_id: 2,
	name: "Aeon Flux",
	image_uri: "http://www.toonova.com/images/series/big/735.jpg",
	category: "TV",
	text: "Animated character created by Peter Chung for 90s era MTV show, Liquid Television."
}, {
	user_id: 2,
	name: "Michonne",
	image_uri: "http://the-walkingdead.com/wp-content/uploads/2014/11/Top-5-Michonne-Moments.jpg",
	category: "TV, Graphic Novel",
	text: "Kitana-wielding character on TV show The Walking Dead."
}, {
	user_id: 2,
	name: "Ellen Ripley",
	image_uri: "http://vignette3.wikia.nocookie.net/avp/images/2/2f/Ellen_Ripley_badass.png/revision/latest?cb=20130410133950",
	category: "Film",
	text: "Blow-torch-wielding badass from the Alien films."
}, {
	user_id: 2,
	name: "Louise Belcher",
	image_uri: "http://lynncinnamon.com/wp-content/uploads/2014/08/louisehell.gif",
	category: "TV",
	text: "Sassy youngest sibling of the Belcher family, from the TV show Bob's Burgers."
}, {
	user_id: 2,
	name: "Hermione Granger",
	image_uri: "http://feather-mag.com/wp-content/uploads/2015/02/Hermione-HBP-hermione-granger-16048675-1919-2560.jpg",
	category: "Books, Film",
	text: "Smartest student at Hogwarts. Gets into trouble with Harry and Ron and still gets her homework done. House-Elf activist."
}, {
	user_id: 2,
	name: "Nicki Minaj",
	image_uri: "http://ia.media-imdb.com/images/M/MV5BNDQ2NTk2MDQ3NV5BMl5BanBnXkFtZTcwNjg5OTg0OA@@._V1_UY317_CR19,0,214,317_AL_.jpg",
	category: "Music",
	text: "Baddest chick rapper working today. I'm sorry, I meant baddest rapper, period."
}, {
	user_id: 1,
	name: "Ruth Bader Ginsburg",
	image_uri: "http://ell.h-cdn.co/assets/cm/15/01/54a7544a8ea6b_-_rb-ginsburg-ruven-afanador-xln-elv.jpg",
	category: "Real Life Bad Bitch",
	text: "Second-ever appointed female Supreme Court Justice. She's a stalwart defender of women's rights."
  }]

Chick.create chicks














