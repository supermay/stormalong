Photo.destroy_all
Article.destroy_all

no_pic_article = Article.create!(title: "I have no pics", body: "I have absolutely no pics")
test_article = Article.create!(title: "Test article 1", body: "I am a test with 3 pics")

pic1 = Photo.create!(article: test_article, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502718958/stormalong/IMG_0271.jpg")
pic2 = Photo.create!(article: test_article, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502718961/stormalong/image2.jpg")
pic3 = Photo.create!(article: test_article, featured:true, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502718959/stormalong/IMG_0274.jpg")

test_article_2 = Article.create!(title: "Test article 2", body: "I am a test with 3 pics")

pic4 = Photo.create!(article: test_article_2, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806174/stormalong/image4.jpg")
pic5 = Photo.create!(article: test_article_2, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806173/stormalong/IMG_0044.jpg")
pic6 = Photo.create!(article: test_article_2, featured:true, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806174/stormalong/IMG_0211.jpg")

test_article_3 = Article.create!(title: "Test article 3", body: "I am a test with 3 pics")

pic7 = Photo.create!(article: test_article_3, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806174/stormalong/IMG_0268.jpg")
pic8 = Photo.create!(article: test_article_3, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806174/stormalong/IMG_0269.jpg")
pic9 = Photo.create!(article: test_article_3, featured:true, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806174/stormalong/IMG_0272.jpg")

test_article_4 = Article.create!(title: "Test article 4", body: "I am a test with 3 pics")

pic10 = Photo.create!(article: test_article_4, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806176/stormalong/IMG_0410.jpg")
pic11 = Photo.create!(article: test_article_4, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806175/stormalong/IMG_0411.jpg")
pic12 = Photo.create!(article: test_article_4, featured:true, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806175/stormalong/IMG_1009.jpg")
pic13 = Photo.create!(article: test_article_4, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806527/stormalong/Screen_Shot.png")

puts "#{Article.all.count} articles were created - and also #{Photo.all.count} photos."
