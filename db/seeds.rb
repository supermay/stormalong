User.destroy_all
AdminUser.destroy_all
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

test_article_5 = Article.create!(title: "Over het schip",
body: "<p>Ons schip is een stalen van de Stadt Caribbean 40 gebouwd in 1990.
We hebben haar in de winter van 2015 gekocht in Hellevoetsluis.
In 2016 hebben we onze &ldquo;Maidentrip&rdquo;
gemaakt naar Noorwegen en heeft ze zich goed bewezen.
Sinds winter 2016 zijn we hard bezig om het schip van binnen opnieuw
in te richten zie ook onze blogposts hierover.</p>
<p><strong>Techniek</strong><br /> Basismotor&nbsp;&nbsp; &nbsp;Mitsubishi
<br /> Cilinders&nbsp;&nbsp; &nbsp;4-cilinders<br />
Inhoud&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;1758 cc
<br /> Vermogen&nbsp;&nbsp; &nbsp;42 pk - 3000 omw/min
<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp;&nbsp;<br /> <strong>Energie&nbsp;</strong>
<br /> 80 amp start accu + 100 ampere accu voor ankerlier voor in schip
<br /> 4x120 amp agm accu&rsquo;s&nbsp;<br /> Mastervolt accu lader
<br /> Mastervolt omvormer 2000w</p> <p><strong>Hoe we het op wekken</strong>
<br /> Twee 100wp &nbsp;zonnepanelen met mastervolt regelaar
<br /> Windgenerator air x 400w<br /> 60 amp dynamo met mastervolt regelaar
<br /> En een mastervolt easy display om alle accu&rsquo;s in de gaten te houden
</p> <p><strong>Navigatieapparatuur</strong><br />
B&amp;G triton display &nbsp;</p>")

pic14 = Photo.create!(article: test_article_5, featured: true, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502973467/stormalong/Lijnenplan.jpg")
pic15 = Photo.create!(article: test_article_5, featured: false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502973466/stormalong/Specificaties.png")
pic16 = Photo.create!(article: test_article_5, featured: false, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806527/stormalong/Screen_Shot.png")

test_article_6 = Article.create!(title: "About us",
body: "<p>&nbsp;</p> <p><meta charset='utf-8' /></p>
<p dir='ltr'> Enerzijds, Niels (1987), kon al eerder zwemmen dan lopen,
dat soort type. Daarnaast Linette (1991) 24 jaar opgegroeid in Maastricht,
ja zonder vaarwater. Tijdens mijn studententijd ben ik in aanraking gekomen
met zeilen op valkjes, en ja toen ik Niels tegen het lijf liep was er
natuurlijk geen houden meer aan.</p> <p dir='ltr'>Na 3 maanden weekendjes
oefenen kozen we het ruime sop met Niels zijn Westerly GK24 (Duvel) naar
Denemarken in zomer 2013. Onderweg hadden we veel bekijks van boten die
in lengte vaak dubbel zo groot waren als onze Duvel, maar waarvan ook
de bemanning minstens 2x zo oud was als wij waren... Op deze tocht hebben
we veel avonturen beleefd die momenteel nog vaak als &quot; sterk verhaal&quot;
&nbsp;op tafel komen. Laat ik het zo zeggen, achteraf gezien weet ik niet
of ik nog zomaar zo&#39;n grote tocht zou maken op zo&#39;n klein bootje
met de ervaring die ik toen had. Eenmaal weer in Nederland aangekomen
begon het Niels natuurlijk enorm te kriebelen, misschien had hij nu wel
een meisje gevonden die geschikt was om zijn dromen (de wereld rondvaren)
na te jagen..... </p> <p dir='ltr'>Na veel lezen over andere schepen o.a.
Duende, de Blauwe Pinguin, de Pinta was mijn nieuwsgierigheid en reislust
toch ook wel geprikkeld! Dit resulteerde in de aankoop van een 25jarige
stale schone &quot;Stormalong&quot; een van de stadt caribbean 40, deze
dame zal ons moeten helpen deze dromen te verwezenlijken.</p> ")

pic17 = Photo.create!(article: test_article_6, featured: true, remote_image_url: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1502806174/stormalong/IMG_0211.jpg")

puts "#{Article.all.count} articles were created - and also #{Photo.all.count} photos."
AdminUser.create!(email: 'linette@stormalong.com', password: 'stormalonglinette', password_confirmation: 'stormalonglinette')
puts "#{AdminUser.all.count} admins were created"
