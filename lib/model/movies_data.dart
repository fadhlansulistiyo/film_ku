class Movie {
  String title;
  String releaseDate;
  String runtime;
  double rating;
  String description;
  String poster;
  String backdrop;

  Movie({
    required this.title,
    required this.releaseDate,
    required this.runtime,
    required this.rating,
    required this.description,
    required this.poster,
    required this.backdrop,
  });
}

var movieList = [
  Movie(
    title: "Inception",
    releaseDate: "2010-07-16",
    runtime: "148 min",
    rating: 8.8,
    description:
    "Inception is a mind-bending thriller that dives deep into the concept of shared dreaming. Dom Cobb, a skilled thief who specializes in extracting secrets from people's subconscious, is given a seemingly impossible task: planting an idea in someone's mind, a process known as 'inception.' This dangerous mission takes him through various layers of dreams within dreams, where the line between reality and imagination blurs. With a team of skilled individuals, Cobb must confront his own inner demons while navigating through treacherous dreamscapes. This visually stunning and intellectually challenging film keeps viewers on the edge of their seats until the very last frame.",
    poster: "images/inception-poster.jpg",
    backdrop: "images/inception-backdrop.jpg",
  ),
  Movie(
    title: "The Dark Knight",
    releaseDate: "2008-07-18",
    runtime: "152 min",
    rating: 9.0,
    description:
    "The Dark Knight takes the superhero genre to a new level of complexity and depth. Bruce Wayne continues his war on crime as Batman, determined to protect Gotham City from dangerous criminals. However, a new nemesis emerges—the Joker, a twisted criminal mastermind who thrives on chaos and terror. As the Joker's plans unravel, Batman is forced to make difficult choices that blur the line between hero and vigilante. With the help of allies like Commissioner Gordon and Harvey Dent, Batman must stop the Joker’s reign of terror, but at what cost? This epic tale explores themes of morality, justice, and the human psyche.",
    poster: "images/dark-knight-poster.jpg",
    backdrop: "images/dark-knight-backdrop.jpg",
  ),
  Movie(
    title: "Interstellar",
    releaseDate: "2014-11-07",
    runtime: "169 min",
    rating: 8.6,
    description:
    "Interstellar is a visually stunning and emotionally gripping exploration of humanity’s survival beyond Earth. As Earth faces environmental collapse, a group of astronauts embarks on a daring journey through a wormhole in search of a new home for humanity. Led by pilot Cooper and scientist Brand, the team navigates through alien worlds and strange dimensions while grappling with the emotional toll of leaving their families behind. Interstellar beautifully weaves themes of love, sacrifice, and the resilience of the human spirit into a grand, cosmic adventure that challenges the boundaries of science fiction and human imagination.",
    poster: "images/interstellar-poster.jpg",
    backdrop: "images/interstellar-backdrop.jpg",
  ),
  Movie(
    title: "The Matrix",
    releaseDate: "1999-03-31",
    runtime: "136 min",
    rating: 8.7,
    description:
    "The Matrix is a revolutionary film that blends cyberpunk aesthetics with philosophical questions about reality. Neo, a computer hacker, is drawn into a hidden world where he discovers that the life he knows is an illusion, a simulated reality controlled by intelligent machines. Led by the mysterious Morpheus and the fierce Trinity, Neo must embrace his destiny as 'The One' and lead a rebellion against the machines. As Neo’s powers grow, the film explores deep existential themes, including the nature of free will, reality, and control, all set against a backdrop of groundbreaking visual effects and intense action sequences.",
    poster: "images/matrix-poster.jpg",
    backdrop: "images/matrix-backdrop.jpg",
  ),
  Movie(
    title: "The Lord of the Rings: The Fellowship of the Ring",
    releaseDate: "2001-12-19",
    runtime: "178 min",
    rating: 8.8,
    description:
    "The Lord of the Rings: The Fellowship of the Ring begins an epic journey into the world of Middle-earth, where a young hobbit named Frodo Baggins is entrusted with the task of destroying the One Ring, a powerful and dangerous artifact created by the dark lord Sauron. Joined by a diverse group of companions, Frodo embarks on a perilous quest across vast landscapes filled with danger and wonder. Along the way, they face formidable foes, ancient secrets, and growing threats. This film sets the stage for an incredible tale of friendship, courage, and the ultimate battle between good and evil.",
    poster: "images/lotr-fellowship-poster.jpg",
    backdrop: "images/lotr-fellowship-backdrop.jpg",
  ),
  Movie(
    title: "The Avengers",
    releaseDate: "2012-05-04",
    runtime: "143 min",
    rating: 8.0,
    description:
    "The Avengers assembles Earth's mightiest heroes—Iron Man, Captain America, Thor, Hulk, Black Widow, and Hawkeye—into one team to face an unprecedented threat to the world. The villainous Loki, with the backing of an alien army, threatens to enslave humanity, and only the Avengers can stop him. However, the team must overcome their differences and personal struggles to work together. As New York City becomes a battleground for the fate of the world, the Avengers must rise to the occasion in this explosive, action-packed film that redefined superhero team-ups and set the stage for a shared cinematic universe.",
    poster: "images/avengers-poster.jpg",
    backdrop: "images/avengers-backdrop.jpg",
  ),
  Movie(
    title: "Jurassic Park",
    releaseDate: "1993-06-11",
    runtime: "127 min",
    rating: 8.1,
    description:
    "Jurassic Park is a thrilling adventure that explores the consequences of playing God. A group of scientists, led by billionaire John Hammond, has successfully cloned dinosaurs to create a prehistoric theme park. But when a security breach occurs, the dinosaurs break free, and chaos ensues. As visitors struggle to survive on the island, they realize the deadly power of these once-extinct creatures. Jurassic Park is a groundbreaking film that combines cutting-edge special effects with a compelling story about the dangers of human hubris and the unpredictability of nature’s power.",
    poster: "images/jurassic-park-poster.jpg",
    backdrop: "images/jurassic-park-backdrop.jpg",
  ),
  Movie(
    title: "Titanic",
    releaseDate: "1997-12-19",
    runtime: "195 min",
    rating: 7.8,
    description:
    "Titanic tells the heart-wrenching story of love, tragedy, and loss aboard the ill-fated R.M.S. Titanic. Jack, a poor artist, and Rose, a wealthy aristocrat, come from different worlds but fall deeply in love during the ship’s maiden voyage. As their romance blossoms, the Titanic strikes an iceberg, and the ensuing disaster forces them into a desperate struggle for survival. With stunning visuals and a sweeping emotional arc, Titanic captures the human drama and the colossal scale of one of history’s greatest tragedies. It’s a timeless tale of love and sacrifice against the backdrop of an epic catastrophe.",
    poster: "images/titanic-poster.jpg",
    backdrop: "images/titanic-backdrop.jpg",
  ),
  Movie(
    title: "Gladiator",
    releaseDate: "2000-05-05",
    runtime: "155 min",
    rating: 8.5,
    description:
    "Gladiator is a powerful story of revenge and redemption set in ancient Rome. Maximus, a respected general betrayed by the corrupt emperor Commodus, is forced into slavery and becomes a gladiator. As he rises through the ranks of the arena, Maximus seeks revenge on Commodus, who murdered his family and seized the throne. Gladiator is a visually stunning epic filled with intense battles, political intrigue, and unforgettable performances. At its core, it is a story about honor, loyalty, and the quest for justice in a world driven by power and ambition.",
    poster: "images/gladiator-poster.jpg",
    backdrop: "images/gladiator-backdrop.jpg",
  ),
  Movie(
    title: "Spider-Man: No Way Home",
    releaseDate: "2021-12-17",
    runtime: "148 min",
    rating: 8.4,
    description:
    "Spider-Man: No Way Home is a thrilling, emotional journey that explores the consequences of superhero fame and the multiverse. After his identity is revealed to the world, Peter Parker’s life is turned upside down. In a desperate attempt to undo the damage, he seeks help from Doctor Strange, but their spell goes wrong, opening the door to villains from other dimensions. Peter must confront not only these new threats but also his own choices and the weight of being a hero. No Way Home delivers stunning action, heartwarming moments, and a deep exploration of responsibility and sacrifice.",
    poster: "images/spider-man-no-way-home-poster.jpg",
    backdrop: "images/spider-man-no-way-home-backdrop.jpg",
  ),
];
