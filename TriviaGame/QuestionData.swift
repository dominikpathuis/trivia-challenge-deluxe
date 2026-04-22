//
//  QuestionData.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import Foundation

let allQuestions: [TriviaQuestion] = [
    // MARK: - Computer Science / Easy

    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "What does CPU stand for?",
        answers: ["Central Processing Unit", "Computer Personal Unit", "Central Program Utility", "Control Processing User"],
        correctAnswer: "Central Processing Unit"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "Which device is commonly used to move a cursor on a computer screen?",
        answers: ["Keyboard", "Monitor", "Mouse", "Printer"],
        correctAnswer: "Mouse"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "Which of these is a programming language?",
        answers: ["Python", "Cheetah", "Tiger", "Falcon"],
        correctAnswer: "Python"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "What does URL stand for?",
        answers: ["Uniform Resource Locator", "Universal Reference Link", "United Resource List", "Uniform Record Locator"],
        correctAnswer: "Uniform Resource Locator"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "What does RAM stand for?",
        answers: ["Random Access Memory", "Read Access Module", "Rapid Application Method", "Remote Access Machine"],
        correctAnswer: "Random Access Memory"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "Which company developed the Windows operating system?",
        answers: ["Apple", "Google", "Microsoft", "IBM"],
        correctAnswer: "Microsoft"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "Which part of a computer is considered the brain of the system?",
        answers: ["Hard drive", "CPU", "Monitor", "Keyboard"],
        correctAnswer: "CPU"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "What is the main job of a web browser?",
        answers: ["Edit videos", "Display websites", "Write code automatically", "Store passwords only"],
        correctAnswer: "Display websites"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "Which symbol is commonly used in email addresses?",
        answers: ["#", "&", "@", "%"],
        correctAnswer: "@"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .easy,
        prompt: "What kind of file is typically used to store a picture?",
        answers: ["JPG", "MP3", "TXT", "EXE"],
        correctAnswer: "JPG"
    ),

    // MARK: - Computer Science / Medium

    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "Which data structure follows First In, First Out order?",
        answers: ["Stack", "Queue", "Tree", "Graph"],
        correctAnswer: "Queue"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "Binary code is built using which two digits?",
        answers: ["1 and 2", "0 and 1", "2 and 3", "0 and 9"],
        correctAnswer: "0 and 1"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "What does HTML stand for?",
        answers: ["HyperText Markup Language", "HighText Machine Language", "Hyper Transfer Markdown Language", "Home Tool Markup Language"],
        correctAnswer: "HyperText Markup Language"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "Which sorting algorithm repeatedly swaps adjacent out-of-order elements?",
        answers: ["Merge Sort", "Quick Sort", "Bubble Sort", "Heap Sort"],
        correctAnswer: "Bubble Sort"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "What is RAM primarily used for?",
        answers: ["Permanent storage", "Temporary working memory", "Displaying graphics", "Printing files"],
        correctAnswer: "Temporary working memory"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "What does HTTP stand for?",
        answers: ["HyperText Transfer Protocol", "High Transmission Text Process", "Hyper Transfer Text Program", "Host Transfer Tool Protocol"],
        correctAnswer: "HyperText Transfer Protocol"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "Which number system is base 16?",
        answers: ["Binary", "Decimal", "Hexadecimal", "Octal"],
        correctAnswer: "Hexadecimal"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "Which type of loop is guaranteed to run at least once in many programming languages?",
        answers: ["for loop", "while loop", "do-while loop", "nested loop"],
        correctAnswer: "do-while loop"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "What is the result of 2 raised to the power of 3?",
        answers: ["6", "8", "9", "12"],
        correctAnswer: "8"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .medium,
        prompt: "Which structure is commonly used to store key-value pairs?",
        answers: ["Dictionary", "Array", "Tuple", "Character"],
        correctAnswer: "Dictionary"
    ),

    // MARK: - Computer Science / Hard

    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "Which tree traversal visits the root node between the left and right subtrees?",
        answers: ["Preorder", "Inorder", "Postorder", "Level order"],
        correctAnswer: "Inorder"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "What is the average time complexity of binary search on a sorted array?",
        answers: ["O(n)", "O(log n)", "O(n log n)", "O(1)"],
        correctAnswer: "O(log n)"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "Which protocol is primarily used for secure web browsing?",
        answers: ["HTTP", "FTP", "HTTPS", "SMTP"],
        correctAnswer: "HTTPS"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "What does SQL stand for?",
        answers: ["Structured Query Language", "Simple Query Logic", "System Question Language", "Sequential Query Language"],
        correctAnswer: "Structured Query Language"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "Which data structure uses Last In, First Out order?",
        answers: ["Queue", "Stack", "Heap", "Graph"],
        correctAnswer: "Stack"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "Which algorithm paradigm does merge sort primarily use?",
        answers: ["Greedy", "Dynamic programming", "Divide and conquer", "Backtracking"],
        correctAnswer: "Divide and conquer"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "In networking, what does DNS do?",
        answers: ["Encrypts traffic", "Translates domain names to IP addresses", "Stores passwords", "Compresses video files"],
        correctAnswer: "Translates domain names to IP addresses"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "Which normal form removes transitive dependencies in database design?",
        answers: ["1NF", "2NF", "3NF", "BCNF"],
        correctAnswer: "3NF"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "Which traversal is commonly used to evaluate an expression tree after its children are processed?",
        answers: ["Inorder", "Preorder", "Postorder", "Level order"],
        correctAnswer: "Postorder"
    ),
    TriviaQuestion(
        category: .computerScience,
        difficulty: .hard,
        prompt: "What is the worst-case time complexity of bubble sort?",
        answers: ["O(log n)", "O(n)", "O(n log n)", "O(n²)"],
        correctAnswer: "O(n²)"
    ),

    // MARK: - Movies / Easy

    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "Which movie features a talking snowman named Olaf?",
        answers: ["Moana", "Frozen", "Tangled", "Encanto"],
        correctAnswer: "Frozen"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "Who is the cowboy toy in Toy Story?",
        answers: ["Buzz Lightyear", "Woody", "Rex", "Slinky Dog"],
        correctAnswer: "Woody"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "Which superhero is known as the Dark Knight?",
        answers: ["Spider-Man", "Iron Man", "Batman", "Superman"],
        correctAnswer: "Batman"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "What color pill does Neo choose in The Matrix?",
        answers: ["Blue", "Green", "Red", "Yellow"],
        correctAnswer: "Red"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "What kind of animal is Simba in The Lion King?",
        answers: ["Tiger", "Lion", "Leopard", "Wolf"],
        correctAnswer: "Lion"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "Which movie series features a wizarding school called Hogwarts?",
        answers: ["The Lord of the Rings", "Harry Potter", "Percy Jackson", "The Chronicles of Narnia"],
        correctAnswer: "Harry Potter"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "Who is Buzz Lightyear's best-known toy friend?",
        answers: ["Woody", "Forky", "Rex", "Hamm"],
        correctAnswer: "Woody"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "Which movie features a clownfish searching for his son?",
        answers: ["Shark Tale", "Finding Nemo", "Moana", "Luca"],
        correctAnswer: "Finding Nemo"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "Which film franchise includes characters named Shrek and Donkey?",
        answers: ["Madagascar", "Shrek", "Ice Age", "Kung Fu Panda"],
        correctAnswer: "Shrek"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .easy,
        prompt: "Which superhero uses a shield made of vibranium?",
        answers: ["Thor", "Iron Man", "Captain America", "Hawkeye"],
        correctAnswer: "Captain America"
    ),

    // MARK: - Movies / Medium

    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Which film won the Academy Award for Best Picture for 1997?",
        answers: ["Titanic", "Good Will Hunting", "L.A. Confidential", "The Full Monty"],
        correctAnswer: "Titanic"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "In Jurassic Park, which dinosaur is the first one the visitors see alive?",
        answers: ["T. rex", "Velociraptor", "Brachiosaurus", "Triceratops"],
        correctAnswer: "Brachiosaurus"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Who directed Jaws?",
        answers: ["Martin Scorsese", "Steven Spielberg", "James Cameron", "George Lucas"],
        correctAnswer: "Steven Spielberg"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Which movie includes the quote, 'Why so serious?'",
        answers: ["Joker", "The Dark Knight", "Batman Begins", "Suicide Squad"],
        correctAnswer: "The Dark Knight"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Which character is known as the Chosen One in the Harry Potter films?",
        answers: ["Ron Weasley", "Harry Potter", "Draco Malfoy", "Neville Longbottom"],
        correctAnswer: "Harry Potter"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Which actor played Jack in Titanic?",
        answers: ["Matt Damon", "Brad Pitt", "Leonardo DiCaprio", "Tom Cruise"],
        correctAnswer: "Leonardo DiCaprio"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Which film series takes place on the planet Pandora?",
        answers: ["Dune", "Avatar", "Star Wars", "The Matrix"],
        correctAnswer: "Avatar"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Which movie follows a young musician visiting the Land of the Dead?",
        answers: ["Encanto", "Coco", "Soul", "Onward"],
        correctAnswer: "Coco"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Which actor plays Iron Man in the Marvel Cinematic Universe?",
        answers: ["Chris Evans", "Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo"],
        correctAnswer: "Robert Downey Jr."
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .medium,
        prompt: "Which movie centers on dreams within dreams?",
        answers: ["Memento", "Inception", "Tenet", "Arrival"],
        correctAnswer: "Inception"
    ),

    // MARK: - Movies / Hard

    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Which 2019 South Korean film won Best Picture at the Oscars?",
        answers: ["Minari", "Parasite", "Burning", "Train to Busan"],
        correctAnswer: "Parasite"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Who composed the score for Interstellar?",
        answers: ["John Williams", "Hans Zimmer", "Howard Shore", "Danny Elfman"],
        correctAnswer: "Hans Zimmer"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Which director made Inception, Dunkirk, and Oppenheimer?",
        answers: ["Christopher Nolan", "Denis Villeneuve", "Ridley Scott", "David Fincher"],
        correctAnswer: "Christopher Nolan"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "What is the name of the kingdom in Frozen?",
        answers: ["Arendelle", "Genovia", "Corona", "Atlantis"],
        correctAnswer: "Arendelle"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Which film features a family hiding beneath another family's home?",
        answers: ["Burning", "Parasite", "The Host", "Oldboy"],
        correctAnswer: "Parasite"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Who directed Pulp Fiction?",
        answers: ["Quentin Tarantino", "Guy Ritchie", "Martin Scorsese", "Francis Ford Coppola"],
        correctAnswer: "Quentin Tarantino"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Which actor played the Joker in The Dark Knight?",
        answers: ["Joaquin Phoenix", "Heath Ledger", "Jared Leto", "Jack Nicholson"],
        correctAnswer: "Heath Ledger"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Which science fiction film features the line, 'Tears in rain'?",
        answers: ["Alien", "Blade Runner", "The Matrix", "Arrival"],
        correctAnswer: "Blade Runner"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Which movie won Best Picture at the Oscars before Parasite, for the year 2018 releases?",
        answers: ["Green Book", "Roma", "Bohemian Rhapsody", "Black Panther"],
        correctAnswer: "Green Book"
    ),
    TriviaQuestion(
        category: .movies,
        difficulty: .hard,
        prompt: "Who directed Spirited Away?",
        answers: ["Makoto Shinkai", "Hayao Miyazaki", "Satoshi Kon", "Mamoru Hosoda"],
        correctAnswer: "Hayao Miyazaki"
    ),

    // MARK: - Sports / Easy

    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "How many points is a touchdown worth before the extra point?",
        answers: ["3", "6", "7", "8"],
        correctAnswer: "6"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "Which sport uses a bat, ball, and bases?",
        answers: ["Soccer", "Baseball", "Hockey", "Tennis"],
        correctAnswer: "Baseball"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "In basketball, how many points is a free throw worth?",
        answers: ["1", "2", "3", "4"],
        correctAnswer: "1"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "Which sport is known as the world's most popular sport?",
        answers: ["Basketball", "Cricket", "Soccer", "Tennis"],
        correctAnswer: "Soccer"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "What object is hit back and forth in tennis?",
        answers: ["Puck", "Ball", "Shuttlecock", "Disc"],
        correctAnswer: "Ball"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "Which sport uses a hoop and net mounted 10 feet high?",
        answers: ["Volleyball", "Basketball", "Handball", "Lacrosse"],
        correctAnswer: "Basketball"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "How many players are on the field for one soccer team at a time, including the goalkeeper?",
        answers: ["9", "10", "11", "12"],
        correctAnswer: "11"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "Which sport is played on ice with sticks and a puck?",
        answers: ["Curling", "Hockey", "Luge", "Figure skating"],
        correctAnswer: "Hockey"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "In baseball, how many strikes usually result in an out?",
        answers: ["2", "3", "4", "5"],
        correctAnswer: "3"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .easy,
        prompt: "Which sport includes the events vault, beam, and floor?",
        answers: ["Diving", "Gymnastics", "Track", "Wrestling"],
        correctAnswer: "Gymnastics"
    ),

    // MARK: - Sports / Medium

    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "How many players from one team are on the court in basketball at one time?",
        answers: ["4", "5", "6", "7"],
        correctAnswer: "5"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "Which country won the 2014 FIFA World Cup?",
        answers: ["Argentina", "Brazil", "Germany", "France"],
        correctAnswer: "Germany"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "What is the term for three strikes in a row in bowling?",
        answers: ["Turkey", "Triple", "Hat trick", "Sweep"],
        correctAnswer: "Turkey"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "In golf, what is one stroke under par called?",
        answers: ["Bogey", "Birdie", "Eagle", "Ace"],
        correctAnswer: "Birdie"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "Which sport features the Tour de France?",
        answers: ["Running", "Cycling", "Swimming", "Skiing"],
        correctAnswer: "Cycling"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "Which country hosts the Wimbledon tennis tournament?",
        answers: ["France", "Australia", "United States", "United Kingdom"],
        correctAnswer: "United Kingdom"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "In American football, how many points is a field goal worth?",
        answers: ["2", "3", "4", "6"],
        correctAnswer: "3"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "What is a hat trick in soccer?",
        answers: ["Three goals by one player", "Three yellow cards", "Three assists", "Three saves in a row"],
        correctAnswer: "Three goals by one player"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "Which NBA player was famously nicknamed King James?",
        answers: ["Kobe Bryant", "LeBron James", "Kevin Durant", "Stephen Curry"],
        correctAnswer: "LeBron James"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .medium,
        prompt: "In volleyball, how many hits is a team allowed before sending the ball over the net?",
        answers: ["2", "3", "4", "5"],
        correctAnswer: "3"
    ),

    // MARK: - Sports / Hard

    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "How long is an Olympic swimming pool?",
        answers: ["25 meters", "50 meters", "75 meters", "100 meters"],
        correctAnswer: "50 meters"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "Which tennis major is played on clay?",
        answers: ["Wimbledon", "US Open", "Australian Open", "French Open"],
        correctAnswer: "French Open"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "In baseball, how many total outs occur in a full inning for both teams combined?",
        answers: ["3", "6", "9", "12"],
        correctAnswer: "6"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "Which trophy is awarded to the Super Bowl champion?",
        answers: ["Vince Lombardi Trophy", "Heisman Trophy", "Stanley Cup", "Commissioner's Trophy"],
        correctAnswer: "Vince Lombardi Trophy"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "What is the highest possible score with a single dart in standard darts?",
        answers: ["50", "60", "100", "180"],
        correctAnswer: "60"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "Which country has won the most men's FIFA World Cup titles?",
        answers: ["Germany", "Argentina", "Brazil", "Italy"],
        correctAnswer: "Brazil"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "In Formula 1, what flag signals the end of a race?",
        answers: ["Red flag", "Yellow flag", "Checkered flag", "Green flag"],
        correctAnswer: "Checkered flag"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "Which golf major is traditionally played at Augusta National?",
        answers: ["The Open Championship", "U.S. Open", "PGA Championship", "The Masters"],
        correctAnswer: "The Masters"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "How many players are on the ice for one hockey team during normal play, including the goalie?",
        answers: ["5", "6", "7", "8"],
        correctAnswer: "6"
    ),
    TriviaQuestion(
        category: .sports,
        difficulty: .hard,
        prompt: "Which Olympic event combines cross-country skiing and rifle shooting?",
        answers: ["Nordic combined", "Biathlon", "Decathlon", "Pentathlon"],
        correctAnswer: "Biathlon"
    )
]
