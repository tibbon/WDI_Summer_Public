# User seed
u1 = User.create(name: "Taylor Hollis", profile_image_url: 'http://images.wikia.com/warhammer40kfanon/images/0/05/Jackie-chan-meme.jpg')
u2 = User.create(name: "Randy Lacey", profile_image_url: 'http://www.webmasternerd.com/wp-content/uploads/2013/08/2.jpg')
u3 = User.create(name: "Cary Ocean", profile_image_url: 'http://weknowmemes.com/wp-content/uploads/2011/10/great-scott-doc-back-to-the-future-drawing.jpg')
u4 = User.create(name: "Sam Skyler", profile_image_url: 'http://wallgood.com/wp-content/uploads/2013/07/Forever-Alone-Meme-Template.jpg')
u5 = User.create(name: "Sal Rowan", profile_image_url: 'http://3.bp.blogspot.com/-3LSV-ioauvU/UPnPspEglDI/AAAAAAAAAJY/cuIC5kBIJA8/s200/meme-faces_00040376.jpg')

# Item seed
i1 = Product.create(	name: "The Mountain Three Wolf Moon Short Sleeve Tee",
				 	description: "Hand dyed shirt featuring a stunning screen print of 3 wolves howling at a moon on a preshrunk, 100% cotton tee dyed and printed by the mountain.")
i2 = Product.create(	name: "Tuscan Whole Milk, 1 Gallon, 128 fl oz",
					description: "While Milk"
				 	)
i2 = Product.first
i1 = Product.all.to_a[1]
# Review Seed

r1 = Review.create( user: u1,
					product: i2,
					body: 'After a long hard week full of days he would burst through the door, his fatigue hidden behind a smile. There was an icy jug of Tuscan Whole Milk, 1 Gallon, 128 fl oz in his right hand. With his left hand he would grip my waist - I was always cooking dinner - and press the cold frostiness of the jug against my arm as he kissed my cheek. I would jump, mostly to gratify him after a time, and smile lovingly at him. He was a good man, a wonderful husband who always brought the milk on Friday, Tuscan Whole Milk, 1 Gallon, 128 fl oz.')

r2 = Review.create( user: u2,
					product: i2,
					body: 'One should not be intimidated by Tuscan Whole Milk. Nor should one prejudge, despite the fact that Tuscan is non-vintage and comes in such large containers. Do not be fooled: this is not a jug milk. I always find it important to taste milk using high-quality stemware -- this is milk deserving of something better than a Flintstones plastic tumbler.')

r3 = Review.create( user: u2,
					product: i1,
					body: 'This item has wolves on it which makes it intrinsically sweet and worth 5 stars by itself, but once I tried it on, thats when the magic happened. After checking to ensure that the shirt would properly cover my girth, I walked from my trailer to Walmart with the shirt on and was immediately approached by women.')

r4 = Review.create( user: u4,
					product: i1,
					body: 'This shirt has changed my life! Before, I couldn\'t walk through the aisles at Wal-Mart, graze on the buffet at Sizzler, or even take in a round at my local miniature golf course, without people pointing and saying, \"Hey, you\'re that Zulu guy from Star Wars, aren\'t you?\" Even if I wore sunglasses, I\'d still get mistaken for Yoko Ono.')