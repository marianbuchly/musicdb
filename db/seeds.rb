artists = [

  [
    "Madonna" , 52 , %{bio Madonna} , "madonna.jpg"
  ],

  [
    "Michael Jackson" , 49 , %{bio MJ} , "michael.jpg"
  ],

  [
    "Whitney Houston" , 58 , %{bio WH} , "whitney.jpg"
  ],

  [
    "Janet Jackson" , 51 , %{bio JJ} , "janet.jpg"
  ],

  [
    "Elton John" , 50 , %{bio EJ} , "http://nepascene.com/wp-content/uploads/2016/03/elton-john-giant-center-hershey.jpg"
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
<<<<<<< HEAD

User.delete_all

frank = User.create( email: 'frank@ex.com', password: 'abcd1234' )
alice = User.create( email: 'alice@ex.com', password: 'abcd1234' )
anton = User.create( email: 'anton@ex.com', password: 'abcd1234' )
||||||| merged common ancestors
=======

User.delete_all

frank = User.create( email: 'frank@ex.com', password: '1234' )
alice = User.create( email: 'alice@ex.com', password: '1234' )
anton = User.create( email: 'anton@ex.com', password: '1234' )
>>>>>>> 6b0c18a7eead602b64e8db218b480dce7c877cbc
