# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Decor.destroy_all
Profile.destroy_all
User.destroy_all

u1 = User.create(email: "migenevieve@gmail.com", password: "123456")
u2 = User.create(email: "justin@gmail.com", password: "123456")
u3 = User.create(email: "buche@gmail.com", password: "123456")
u4 = User.create(email: "michelle@gmail.com", password: "123456")
u5 = User.create(email: "nico@gmail.com", password: "123456")
u6 = User.create(email: "aureliane@gmail.com", password: "123456")
u7 = User.create(email: "jackie@gmail.com", password: "123456")
u8 = User.create(email: "olivier@gmail.com", password: "123456")
u9 = User.create(email: "annie@gmail.com", password: "123456")
u10 = User.create(email: "fred@gmail.com", password: "123456")
u11 = User.create(email: "sophie@gmail.com", password: "123456")
u12 = User.create(email: "gerard@gmail.com", password: "123456")
u13 = User.create(email: "jonathan@gmail.com", password: "123456")
u14 = User.create(email: "clementine@gmail.com", password: "123456")




file1 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400635/Assets%20-photodecors/grange-2_yilcyr.jpg')
file2 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400633/Assets%20-photodecors/grange-interieure_tdei9f.jpg')
file3 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400633/Assets%20-photodecors/accessoire-autovintage_yiwcbr.jpg')
file4 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400640/Assets%20-photodecors/grange-1_pw5cys.jpg')
d1 = Decor.create(title: "Grange de campagne", category: "campagnard", luminosity: "très", decor_exposition: "sud",
                  address: "150 rue Paul-Doumer 45220 Château-Renard", size: 50.50, capacity: "illimité (dans la limite du raisonnable)",
                  price: 15, user: u1)
d1.photos.attach({ io: file1, filename: 'grange-2_yilcyr.jpg', content_type: 'image/jpg' },
                 { io: file2, filename: 'grange-interieure_tdei9f.jpg', content_type: 'image/jpg' },
                 { io: file3, filename: 'accessoire-autovintage_yiwcbr.jpg', content_type: 'image/jpg' },
                 { io: file4, filename: 'grange-1_pw5cys.jpg', content_type: 'image/jpg' })

file5 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400644/Assets%20-photodecors/verger-olivier-1_xesnsn.jpg')
file6 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400634/Assets%20-photodecors/verger-olivier-3_xul2sv.jpg')
file7 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400634/Assets%20-photodecors/terrasse-contemporain-campagnard_qovjdj.jpg')
file8 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400631/Assets%20-photodecors/exterieur-mediterane%CC%81en_dimrnl.jpg')
d2 = Decor.create(title: "Verger et terrasse du sud", category: "campagnard", luminosity: "très", decor_exposition: "sud",
                  address: "34 Avenue du Pigonnet 13090 Aix-en-Provence", size: 100, capacity: "illimité (dans la limite du raisonnable",
                  price: 15, user: u2)
d2.photos.attach({ io: file5, filename: 'verger-olivier-1_xesnsn.jpg', content_type: 'image/jpg' },
                 { io: file6, filename: 'verger-olivier-3_xul2sv.jpg', content_type: 'image/jpg' },
                 { io: file7, filename: 'terrasse-contemporain-campagnard_qovjdj.jpg', content_type: 'image/jpg' },
                 { io: file8, filename: 'exterieur-mediterane%CC%81en_dimrnl.jpg', content_type: 'image/jpg' })

file9 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400642/Assets%20-photodecors/vintage-accessoire_he2d92.jpg')
file10 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400636/Assets%20-photodecors/chambre-motel-vintage_sbp41t.jpg')
file11 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400635/Assets%20-photodecors/piece-bureau-vintage-sombre_vk4x2r.jpg')
d3 = Decor.create(title: "Chambre style année 60", category: "vintage", luminosity: "peu", decor_exposition: "nord",
                  address: "124 rue sainte 13007 Marseille", size: 15, capacity: "3", price: 15, user: u3)
d3.photos.attach({ io: file9, filename: 'vintage-accessoire_he2d92.jpg', content_type: 'image/jpg' },
                 { io: file10, filename: 'chambre-motel-vintage_sbp41t.jpg', content_type: 'image/jpg' },
                 { io: file11, filename: 'vintage-accessoire_he2d92.jpg', content_type: 'image/jpg' })

file12 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400632/Assets%20-photodecors/loft-desaffecte-plante_cgxees.jpg')
file13 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400637/Assets%20-photodecors/salon-contemporain-plante-artdeco_fyyn05.jpg')
file14 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400640/Assets%20-photodecors/balcon-plante_kkaidl.jpg')
d4 = Decor.create(title: "Loft poétique scandinave", category: "contemporain", luminosity: "moyen", decor_exposition: "ouest",
                  address: "1A Rue du Petit Puits 13002 Marseille", size: 25, capacity: "4", price: 15, user: u4)
d4.photos.attach({ io: file12, filename: 'balcon-plante_kkaidl.jpg', content_type: 'image/jpg' },
                 { io: file13, filename: 'salon-contemporain-plante-artdeco_fyyn05.jpg', content_type: 'image/jpg' },
                 { io: file14, filename: 'balcon-plante_kkaidl.jpg', content_type: 'image/jpg' })

file15 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400642/Assets%20-photodecors/loft-desaffecte-1_rdgetv.jpg')
file16 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400635/Assets%20-photodecors/industriel-sombre_wg4wtt.jpg')
file17 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400632/Assets%20-photodecors/loft-desaffecte-3_fy9omr.jpg')
d5 = Decor.create(title: "Atelier d'artistes", category: "industriel", luminosity: "moyen", decor_exposition: "est",
                  address: "19 Bd Boisson 13004 Marseille", size: 100, capacity: "20", price: 10, user: u5)
d5.photos.attach({ io: file15, filename: 'loft-desaffecte-1_rdgetv.jpg', content_type: 'image/jpg' },
                 { io: file16, filename: 'industriel-sombre_wg4wtt.jpg', content_type: 'image/jpg' },
                 { io: file17, filename: 'loft-desaffecte-3_fy9omr.jpg', content_type: 'image/jpg' })

file18 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400638/Assets%20-photodecors/studio-photo2_niitua.jpg')
file19 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400632/Assets%20-photodecors/piece-neutre_ewo2cd.jpg')
d6 = Decor.create(title: "Studio photo homemade", category: "neutre", luminosity: "très", decor_exposition: "sud",
                  address: "75016 rue La Boétie 75 Paris", size: 22, capacity: "4", price: 5, user: u6)
d6.photos.attach({ io: file18, filename: 'loft-desaffecte-1_rdgetv.jpg', content_type: 'image/jpg' },
                 { io: file19, filename: 'industriel-sombre_wg4wtt.jpg', content_type: 'image/jpg' })

file20 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400630/Assets%20-photodecors/galerie-art-neute_aud8hd.jpg')
file21 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400636/Assets%20-photodecors/galerie-d-art_sztw8a.jpg')
d7 = Decor.create(title: "Galerie d'art", category: "artistique", luminosity: "moyen", decor_exposition: "nord",
                  address: "9 Rue d'Orange 13003 Marseille", size: 40, capacity: "20", price: 0, user: u7)
d7.photos.attach({ io: file20, filename: 'loft-desaffecte-1_rdgetv.jpg', content_type: 'image/jpg' },
                 { io: file21, filename: 'industriel-sombre_wg4wtt.jpg', content_type: 'image/jpg' })

file22 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400638/Assets%20-photodecors/atelier-artiste-original-1_tevs7i.jpg')
file23 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400630/Assets%20-photodecors/appartement-atelier-neute_sabg5a.jpg')
d8 = Decor.create(title: "Atelier peintre undergroung", category: "artistique", luminosity: "peu",
                  decor_exposition: "est", address: "74 Rue Louis Pasteur 84029 Avignon", size: 12, capacity: "5",
                  price: 5, user: u8)
d8.photos.attach({ io: file22, filename: 'atelier-artiste-original-1_tevs7i.jpg', content_type: 'image/jpg' },
                 { io: file23, filename: 'appartement-atelier-neute_sabg5a.jpg', content_type: 'image/jpg' })

file24 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400634/Assets%20-photodecors/balcon-cabane-serre-vintage_dzrg7l.jpg')
file25 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400636/Assets%20-photodecors/foret-bouleau_xlguec.jpg')
d9 = Decor.create(title: "Vieux cabanon et petites natures derrière", category: "campagnard", luminosity: "très",
                  decor_exposition: "ouest", address: "74 Rue Louis Pasteur 84029 Avignon", size: 15, capacity: "5",
                  price: 5, user: u9)
d9.photos.attach({ io: file24, filename: 'balcon-cabane-serre-vintage_dzrg7l.jpg', content_type: 'image/jpg' },
                 { io: file25, filename: 'foret-bouleau_xlguec.jpg', content_type: 'image/jpg' })

file26 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400641/Assets%20-photodecors/app-contemporain-vintage-charge%CC%81-peu-lumineux_rs3uji.jpg')
file27 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400642/Assets%20-photodecors/app-contemporain-vintage-charge%CC%81-peu-lumineux-suite_gqu5t9.jpg')
d10 = Decor.create(title: "Appartement hipster style Mtl", category: "original", luminosity: "moyen",
                   decor_exposition: "nord", address: "18 Chemin de la Loge 31400 Toulouse", size: 20, capacity: "5",
                   price: 5, user: u10)
d10.photos.attach({ io: file26, filename: 'app-contemporain-vintage-charge%CC%81-peu-lumineux_rs3uji.jpg',
                    content_type: 'image/jpg' },
                  { io: file27, filename: 'app-contemporain-vintage-charge%CC%81-peu-lumineux-suite_gqu5t9.jpg',
                    content_type: 'image/jpg' })

file28 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400634/Assets%20-photodecors/studio-musique_a8ef4j.jpg')
file29 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1634400636/Assets%20-photodecors/loft-piano-neutre-artistique_wppboy.jpg')
d11 = Decor.create(title: "Studio musique", category: "artistique", luminosity: "moyen",
                   decor_exposition: "nord", address: "21 rue haxo 13001 Marseille", size: 30, capacity: "20",
                   price: 15, user: u11)
d11.photos.attach({ io: file28, filename: 'studio-musique_a8ef4j.jpg', content_type: 'image/jpg' },
                  { io: file29, filename: 'loft-piano-neutre-artistique_wppboy.jpg', content_type: 'image/jpg' })

file30 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1636807204/Assets%20Profile%20Avatar/494C98FB-9480-46DD-9504-1FC04B644EBE_1_105_c_zn35dd.jpg')
p1 = Profile.create(first_name: "Geai", last_name: "Michaud", description: "Photographe à mes heures perdues, j'adore
                    accueillir d'autres artistes dans mon environnement afin de partager un autre regard sur mon
                    univers.", city: "Château-Renard", user: u1)
p1.avatar.attach({ io: file30, filename: '494C98FB-9480-46DD-9504-1FC04B644EBE_1_105_c_zn35dd.jpg',
                   content_type: 'image/jpg' })

file31 = URI.open('https://res.cloudinary.com/beyondsky/image/upload/v1636807345/Assets%20Profile%20Avatar/B92EE87B-B4EF-48CC-8923-134D18FECC0D_1_105_c_rruqnj.jpg')
p2 = Profile.create(first_name: "BullyLover", last_name: "Dog", description: "Amoureux des boully et des décors
                    vintages, je suis plutôt dans la sphère de l'écriture scénaristique. Partager mon décor me permet
                    d'échanger avec d'autres artistes, toujours à la recherche de nouveaux collaborateurs/
                    collaboratrices.", city: "Marseille", user: u3)
p2.avatar.attach({ io: file31, filename: 'B92EE87B-B4EF-48CC-8923-134D18FECC0D_1_105_c_rruqnj.jpg',
                   content_type: 'image/jpg' })
