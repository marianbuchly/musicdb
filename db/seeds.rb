artists = [

  [
    "Madonna" , 52 , %{bio Madonna} , "madonna.jpg"
  ],

  [
    "Michael Jackson" , 49 , %{bio MJ} , "madonna.jpg"
  ],

  [
    "Whitney Houston" , 58 , %{bio WH} , "madonna.jpg"
  ],

  [
    "Janet Jackson" , 51 , %{bio JJ} , "madonna.jpg"
  ],

  [
    "Elton John" , 50 , %{bio EJ} , "madonna.jpg"
  ],
]

artists.each do | name, age, bio, img |
   Artist.create( name: name, age: age, bio: bio , img: img)
end


artist_songs = {}
artist_songs["Madonna"] = [

[  "Material Girl",
  "2:45" ,
  "Album1" ,
  1980 ],
]

artist_songs["Michael Jackson"] = [

[  "Thriller",
  "2:45" ,
  "Album1" ,
  1980 ],
]

artist_songs["Whitney Houston"] = [

[  "How will I know",
  "2:45" ,
  "Album1" ,
  1980]
]

artist_songs["Elton John"] = [

[  "Your Song",
  "2:45" ,
  "Album1" ,
  1980 ]
]

artist_songs["Janet Jackson"] = [

  ["Together Again",
  "2:45" ,
  "Album1" ,
  1980 ],

]


artist_songs.each do | artist_name, songs |
   artist = Artist.find_by( name: artist_name )

   songs.each do | title, duration, album, year |
    song = Song.create( title:title, artist_id: artist.id, duration: duration , album:album , year: year )
   end
end
