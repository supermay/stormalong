Photo.destroy_all
Article.destroy_all

3.times { Article.create!(title: "Item", body: "I am a description.") }

test_article = Article.create!(title: "Test article", body: "I am a test with 3 pics")

pic1 = Photo.create!(article: test_article, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502718958/stormalong/IMG_0271.jpg")
pic2 = Photo.create!(article: test_article, featured:false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502718961/stormalong/image2.jpg")
pic3 = Photo.create!(article: test_article, featured:true, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502718959/stormalong/IMG_0274.jpg")

puts "#{Article.all.count} articles were created - and also #{Photo.all.count} photos."
