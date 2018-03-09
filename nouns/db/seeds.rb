# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mm = Meme.create({'alias'=>'jaspypants', 'one'=>'madison gallery', 'two'=>'straight vodka', 'three'=>'bad art', 'four'=>'drunk friends', 'five'=>'brioni suit'});


mm1 = Meme.create({'alias'=>'brobert65', 'one'=>'PBR', 'two'=>'frat house', 'three'=>'kegstand', 'four'=>'spirit week', 'five'=>'impending exams'});


mm2 = Meme.create({'alias'=>'sunsetbear', 'one'=>'hawaiian beaches', 'two'=>'multiple girlfriends', 'three'=>'lsd', 'four'=>'tiki bar', 'five'=>'coop farming'});


l1 = Like.create({'meme_id'=>2})

l2 = Like.create({'meme_id'=>3})

l3 = Like.create({'meme_id'=>4})
