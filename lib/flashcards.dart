//flashcards
// lib/flashcards.dart

import 'flashcard_model.dart';

// Data for flashcards - 50 flashcards for each subject

// Data Structures Flashcards
final List<Flashcard> dsFlashcards = [
  Flashcard(
    topicName: "Data Structure",
    explanation:
        "A Data Structure is a specialized format for organizing, processing, and storing data.",
  ),
  Flashcard(
    topicName: "Array",
    explanation:
        "An array is a collection of elements identified by index or key. All elements in an array have the same data type.",
  ),
  Flashcard(
    topicName: "Linked List",
    explanation:
        "A linked list is a linear collection of elements, called nodes, in which each node points to the next node in the sequence.",
  ),
  Flashcard(
    topicName: "Stack",
    explanation:
        "A stack is a linear data structure that follows the Last In First Out (LIFO) principle.",
  ),
  Flashcard(
    topicName: "Queue",
    explanation:
        "A queue is a linear data structure that follows the First In First Out (FIFO) principle.",
  ),
  Flashcard(
    topicName: "Tree",
    explanation:
        "A tree is a hierarchical data structure consisting of nodes connected by edges, where each node has a value and references to its child nodes.",
  ),
  Flashcard(
    topicName: "Binary Tree",
    explanation:
        "A binary tree is a tree in which each node has at most two children, referred to as the left child and right child.",
  ),
  Flashcard(
    topicName: "Binary Search Tree",
    explanation:
        "A binary search tree is a binary tree where the left child’s key is less than its parent’s key, and the right child’s key is greater.",
  ),
  Flashcard(
    topicName: "Heap",
    explanation:
        "A heap is a special tree-based data structure that satisfies the heap property (either max-heap or min-heap).",
  ),
  Flashcard(
    topicName: "Graph",
    explanation:
        "A graph is a collection of nodes (vertices) and edges, where edges represent relationships between the nodes.",
  ),
  Flashcard(
    topicName: "Hash Table",
    explanation:
        "A hash table is a data structure that maps keys to values using a hash function to determine the index in an array.",
  ),
  Flashcard(
    topicName: "Graph Traversal",
    explanation:
        "Graph traversal refers to the process of visiting each node in a graph, typically using BFS (Breadth-First Search) or DFS (Depth-First Search).",
  ),
  Flashcard(
    topicName: "Breadth-First Search (BFS)",
    explanation:
        "BFS is a graph traversal algorithm that explores nodes level by level, starting from the root node.",
  ),
  Flashcard(
    topicName: "Depth-First Search (DFS)",
    explanation:
        "DFS is a graph traversal algorithm that explores as far down a branch as possible before backtracking.",
  ),
  Flashcard(
    topicName: "Doubly Linked List",
    explanation:
        "A doubly linked list is a linked list where each node has references to both its next and previous node.",
  ),
  Flashcard(
    topicName: "Circular Linked List",
    explanation:
        "A circular linked list is a linked list in which the last node points back to the first node, forming a loop.",
  ),
  Flashcard(
    topicName: "Trie",
    explanation:
        "A trie is a tree-like data structure used to store a dynamic set of strings, typically used in search algorithms.",
  ),
  Flashcard(
    topicName: "AVL Tree",
    explanation:
        "An AVL tree is a self-balancing binary search tree where the difference in heights of left and right subtrees cannot be more than one.",
  ),
  Flashcard(
    topicName: "Red-Black Tree",
    explanation:
        "A red-black tree is a balanced binary search tree where each node has an extra bit for determining the color (either red or black).",
  ),
  Flashcard(
    topicName: "Sorting Algorithms",
    explanation:
        "Sorting algorithms arrange elements of a list in a certain order, typically either ascending or descending.",
  ),
  Flashcard(
    topicName: "Quick Sort",
    explanation:
        "Quick Sort is an efficient, divide-and-conquer sorting algorithm that works by partitioning the array into smaller sub-arrays.",
  ),
  Flashcard(
    topicName: "Merge Sort",
    explanation:
        "Merge Sort is a divide-and-conquer algorithm that divides the array into two halves, sorts them, and merges them.",
  ),
  Flashcard(
    topicName: "Bubble Sort",
    explanation:
        "Bubble Sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent items, and swaps them if they are in the wrong order.",
  ),
  Flashcard(
    topicName: "Insertion Sort",
    explanation:
        "Insertion Sort builds the final sorted array one element at a time by repeatedly picking the next element and placing it in the correct position.",
  ),
  Flashcard(
    topicName: "Selection Sort",
    explanation:
        "Selection Sort is an in-place comparison-based sorting algorithm that selects the smallest (or largest) element and swaps it with the current element.",
  ),
  Flashcard(
    topicName: "Shell Sort",
    explanation:
        "Shell Sort is an in-place comparison-based sorting algorithm that generalizes insertion sort to allow the exchange of far-apart elements.",
  ),
  Flashcard(
    topicName: "Radix Sort",
    explanation:
        "Radix Sort is a non-comparative sorting algorithm that sorts integers by processing individual digits.",
  ),
  Flashcard(
    topicName: "Counting Sort",
    explanation:
        "Counting Sort is a non-comparative sorting algorithm that counts the occurrences of each distinct element in the list.",
  ),
  Flashcard(
    topicName: "Bucket Sort",
    explanation:
        "Bucket Sort is a sorting algorithm that divides the input into several buckets and then sorts each bucket individually.",
  ),
  Flashcard(
    topicName: "Knapsack Problem",
    explanation:
        "The Knapsack Problem is an optimization problem in which the goal is to select items to maximize total value while staying within a weight limit.",
  ),
  Flashcard(
    topicName: "Greedy Algorithms",
    explanation:
        "A greedy algorithm is an approach for solving optimization problems by selecting the best option available at each step.",
  ),
  Flashcard(
    topicName: "Dynamic Programming",
    explanation:
        "Dynamic programming is a method for solving complex problems by breaking them down into simpler subproblems and solving each subproblem just once.",
  ),
  Flashcard(
    topicName: "Divide and Conquer",
    explanation:
        "Divide and conquer is an algorithm design paradigm that solves a problem by dividing it into smaller subproblems, solving each subproblem recursively, and combining their solutions.",
  ),
  Flashcard(
    topicName: "Backtracking",
    explanation:
        "Backtracking is an algorithmic technique used to solve problems incrementally, by trying different possibilities and backing up when a solution path fails.",
  ),
  Flashcard(
    topicName: "Floyd-Warshall Algorithm",
    explanation:
        "The Floyd-Warshall algorithm is used for finding the shortest paths in a weighted graph with positive or negative edge weights.",
  ),
  Flashcard(
    topicName: "Kruskal's Algorithm",
    explanation:
        "Kruskal's Algorithm is used to find the minimum spanning tree of a graph by adding edges in increasing order of weight.",
  ),
  Flashcard(
    topicName: "Prim's Algorithm",
    explanation:
        "Prim's Algorithm is a greedy algorithm used to find the minimum spanning tree of a graph.",
  ),
  Flashcard(
    topicName: "Bellman-Ford Algorithm",
    explanation:
        "The Bellman-Ford Algorithm is used to find the shortest path from a source vertex to all other vertices in a weighted graph.",
  ),
  Flashcard(
    topicName: "Dijkstra's Algorithm",
    explanation:
        "Dijkstra's Algorithm is used to find the shortest path between two nodes in a graph with non-negative edge weights.",
  ),
  Flashcard(
    topicName: "Topological Sort",
    explanation:
        "Topological Sort is a linear ordering of vertices in a directed acyclic graph (DAG) such that for every directed edge uv, vertex u comes before v.",
  ),
  Flashcard(
    topicName: "Hash Map",
    explanation:
        "A hash map is a data structure that implements an associative array, a structure that can map keys to values.",
  ),
  Flashcard(
    topicName: "Bloom Filter",
    explanation:
        "A Bloom filter is a space-efficient probabilistic data structure used to test whether an element is a member of a set.",
  ),
  Flashcard(
    topicName: "Skip List",
    explanation:
        "A Skip List is a data structure that allows fast search, insertion, and deletion operations in a sorted list.",
  ),
  Flashcard(
    topicName: "B+ Tree",
    explanation:
        "A B+ Tree is a self-balancing tree data structure that maintains sorted data and allows for efficient insertion, deletion, and search operations.",
  ),
];

// Mobile App Development Flashcards
final List<Flashcard> moadFlashcards = [
  Flashcard(
    topicName: "Mobile App Development",
    explanation:
        "It refers to the process of creating software applications that run on mobile devices like smartphones and tablets.",
  ),
  Flashcard(
    topicName: "UI Design",
    explanation:
        "User Interface (UI) design is the design of interfaces with a focus on aesthetics and usability.",
  ),
  Flashcard(
    topicName: "Cross-Platform Development",
    explanation:
        "Cross-Platform Development allows developers to write one codebase and deploy it to multiple platforms (iOS, Android).",
  ),
  Flashcard(
    topicName: "Flutter",
    explanation:
        "Flutter is a popular framework for building natively compiled applications for mobile, web, and desktop from a single codebase.",
  ),
  Flashcard(
    topicName: "React Native",
    explanation:
        "React Native is a framework for building native mobile applications using JavaScript and React.",
  ),
  Flashcard(
    topicName: "Swift",
    explanation:
        "Swift is a powerful and intuitive programming language used to develop iOS applications.",
  ),
  Flashcard(
    topicName: "Kotlin",
    explanation:
        "Kotlin is a modern programming language used for Android app development, fully interoperable with Java.",
  ),
  Flashcard(
    topicName: "iOS Development",
    explanation:
        "iOS development is the process of building applications for Apple's iPhone, iPad, and other devices using Swift or Objective-C.",
  ),
  Flashcard(
    topicName: "Android Development",
    explanation:
        "Android development refers to the creation of apps for Android devices using languages like Java or Kotlin.",
  ),
  Flashcard(
    topicName: "APIs",
    explanation:
        "Application Programming Interfaces (APIs) allow different software applications to communicate with each other.",
  ),
  Flashcard(
    topicName: "SQLite",
    explanation:
        "SQLite is a C-language library that implements a small, fast, self-contained SQL database engine used in mobile apps.",
  ),
  Flashcard(
    topicName: "Firebase",
    explanation:
        "Firebase is a platform developed by Google for creating mobile and web applications with tools for analytics, authentication, and databases.",
  ),
  Flashcard(
    topicName: "Push Notifications",
    explanation:
        "Push notifications are messages sent from a server to a user’s mobile device to provide updates or information.",
  ),
  Flashcard(
    topicName: "App Store Optimization (ASO)",
    explanation:
        "ASO refers to the process of improving the visibility of a mobile app in an app store to increase its downloads.",
  ),
  Flashcard(
    topicName: "User Authentication",
    explanation:
        "User authentication is the process of verifying the identity of a user, often through username and password or biometrics.",
  ),
  Flashcard(
    topicName: "Mobile App Testing",
    explanation:
        "Mobile app testing is the process of testing a mobile application for bugs and performance issues across different devices and platforms.",
  ),
  Flashcard(
    topicName: "Material Design",
    explanation:
        "Material Design is a design language developed by Google that emphasizes a clean, intuitive user experience with visual depth.",
  ),
  Flashcard(
    topicName: "App Lifecycle",
    explanation:
        "The app lifecycle refers to the stages an app goes through from being launched to being closed, including background and foreground states.",
  ),
  Flashcard(
    topicName: "User Experience (UX)",
    explanation:
        "UX focuses on optimizing the experience a user has when interacting with a mobile application, focusing on ease of use and user satisfaction.",
  ),
  Flashcard(
    topicName: "User Interface (UI)",
    explanation:
        "UI refers to the visual elements of a mobile application, including buttons, icons, and layout that users interact with.",
  ),
  // Add additional flashcards for other topics...
];

// Management Studies Flashcards (BMS)
final List<Flashcard> bmsFlashcards = [
  Flashcard(
    topicName: "Management",
    explanation:
        "Management involves coordinating and overseeing the activities of an organization to achieve goals efficiently and effectively.",
  ),
  Flashcard(
    topicName: "Leadership",
    explanation:
        "Leadership is the act of guiding and motivating a team towards achieving common goals, often through inspiration and influence.",
  ),
  Flashcard(
    topicName: "Marketing",
    explanation:
        "Marketing refers to the process of promoting, selling, and distributing products or services to the target audience.",
  ),
  Flashcard(
    topicName: "Human Resource Management",
    explanation:
        "HRM involves recruiting, hiring, training, and developing employees to help them contribute to the company's success.",
  ),
  Flashcard(
    topicName: "Financial Management",
    explanation:
        "Financial management focuses on planning, organizing, and controlling financial resources to ensure organizational stability and growth.",
  ),
  Flashcard(
    topicName: "Operations Management",
    explanation:
        "Operations management is the process of overseeing production and manufacturing of goods and services within a business.",
  ),
  Flashcard(
    topicName: "Strategic Management",
    explanation:
        "Strategic management is the process of formulating, implementing, and evaluating strategies to achieve organizational objectives.",
  ),
  Flashcard(
    topicName: "Corporate Governance",
    explanation:
        "Corporate governance refers to the structures, policies, and practices that govern the way a company is directed and controlled.",
  ),
  Flashcard(
    topicName: "Entrepreneurship",
    explanation:
        "Entrepreneurship involves identifying opportunities, innovating, and creating new ventures to achieve growth and success.",
  ),
  Flashcard(
    topicName: "Supply Chain Management",
    explanation:
        "Supply Chain Management (SCM) is the management of the flow of goods and services from production to consumption.",
  ),
  Flashcard(
    topicName: "Business Ethics",
    explanation:
        "Business ethics refers to the moral principles and standards that guide behavior in the business world.",
  ),
  Flashcard(
    topicName: "Corporate Social Responsibility (CSR)",
    explanation:
        "CSR refers to a company’s efforts to contribute to social, environmental, and economic sustainability.",
  ),
  Flashcard(
    topicName: "Product Development",
    explanation:
        "Product development is the process of bringing new products to market by identifying customer needs and creating solutions.",
  ),
  Flashcard(
    topicName: "Project Management",
    explanation:
        "Project management involves planning, executing, and managing projects efficiently to meet deadlines and objectives.",
  ),
  Flashcard(
    topicName: "Organizational Behavior",
    explanation:
        "Organizational behavior studies the impact of individuals, groups, and structures on behavior within an organization.",
  ),
  Flashcard(
    topicName: "Teamwork",
    explanation:
        "Teamwork involves collaboration among individuals with complementary skills to achieve common objectives.",
  ),
  Flashcard(
    topicName: "Change Management",
    explanation:
        "Change management refers to the processes, tools, and techniques used to manage the people side of change within an organization.",
  ),
  Flashcard(
    topicName: "Negotiation",
    explanation:
        "Negotiation is the process of reaching mutually beneficial agreements between two or more parties with different interests.",
  ),
  Flashcard(
    topicName: "Decision Making",
    explanation:
        "Decision making is the cognitive process of selecting a course of action from multiple alternatives.",
  ),
  Flashcard(
    topicName: "Risk Management",
    explanation:
        "Risk management involves identifying, assessing, and controlling risks that could potentially impact a business.",
  ),
  Flashcard(
    topicName: "Market Research",
    explanation:
        "Market research involves gathering, analyzing, and interpreting information about a market, including potential customers and competitors.",
  ),
  Flashcard(
    topicName: "Accounting Principles",
    explanation:
        "Accounting principles are the rules and guidelines followed in preparing financial statements for an organization.",
  ),
  Flashcard(
    topicName: "Financial Statements",
    explanation:
        "Financial statements are reports that summarize the financial position and performance of a business, including the balance sheet and income statement.",
  ),
  Flashcard(
    topicName: "Budgeting",
    explanation:
        "Budgeting involves planning and managing financial resources within an organization to meet short-term and long-term goals.",
  ),
  Flashcard(
    topicName: "Sales Strategy",
    explanation:
        "Sales strategy refers to the approach a company uses to sell its products or services and build relationships with customers.",
  ),
  Flashcard(
    topicName: "Branding",
    explanation:
        "Branding is the process of creating and managing a brand, including the company’s logo, name, and overall image.",
  ),
  Flashcard(
    topicName: "Business Communication",
    explanation:
        "Business communication is the process of sharing information within and outside an organization to achieve business objectives.",
  ),
  Flashcard(
    topicName: "Global Business",
    explanation:
        "Global business refers to the operation and expansion of businesses internationally, taking into account different cultures, economies, and regulations.",
  ),
  Flashcard(
    topicName: "E-commerce",
    explanation:
        "E-commerce is the buying and selling of goods and services over the internet.",
  ),
  Flashcard(
    topicName: "Customer Relationship Management (CRM)",
    explanation:
        "CRM is a strategy for managing an organization’s interactions with current and potential customers.",
  ),
  Flashcard(
    topicName: "Marketing Mix",
    explanation:
        "The marketing mix consists of the 4 P's: Product, Price, Place, and Promotion, which businesses use to market their products effectively.",
  ),
  Flashcard(
    topicName: "Consumer Behavior",
    explanation:
        "Consumer behavior studies the actions and decisions of consumers when purchasing products or services.",
  ),
  Flashcard(
    topicName: "Human Resource Planning",
    explanation:
        "HR planning is the process of identifying current and future human resource needs to achieve business goals.",
  ),
  Flashcard(
    topicName: "Organizational Culture",
    explanation:
        "Organizational culture refers to the shared values, beliefs, and practices within an organization.",
  ),
  Flashcard(
    topicName: "Performance Management",
    explanation:
        "Performance management involves setting performance expectations, monitoring performance, and providing feedback to employees.",
  ),
  Flashcard(
    topicName: "Conflict Resolution",
    explanation:
        "Conflict resolution is the process of resolving disagreements or disputes between individuals or groups within an organization.",
  ),
  Flashcard(
    topicName: "Corporate Strategy",
    explanation:
        "Corporate strategy involves setting long-term goals and determining the best actions to achieve those goals.",
  ),
  Flashcard(
    topicName: "Financial Planning",
    explanation:
        "Financial planning involves assessing financial needs and creating strategies to meet short- and long-term financial goals.",
  ),
  Flashcard(
    topicName: "Supply Chain Logistics",
    explanation:
        "Supply chain logistics refers to the management of the movement of goods from suppliers to end consumers.",
  ),
  Flashcard(
    topicName: "Outsourcing",
    explanation:
        "Outsourcing involves contracting out specific business functions or services to external providers.",
  ),
  Flashcard(
    topicName: "Corporate Finance",
    explanation:
        "Corporate finance involves managing a company's financial activities, including budgeting, financial planning, and investment decisions.",
  ),
  Flashcard(
    topicName: "Innovation Management",
    explanation:
        "Innovation management involves managing processes, resources, and activities that foster innovation within an organization.",
  ),
];

// Discrete Math Flashcards (DM)
final List<Flashcard> dmFlashcards = [
  Flashcard(
    topicName: "Discrete Mathematics",
    explanation:
        "Discrete mathematics involves mathematical structures that are fundamentally discrete rather than continuous, like integers and graphs.",
  ),
  Flashcard(
    topicName: "Set Theory",
    explanation:
        "Set theory studies collections of objects called sets, with operations such as union, intersection, and difference.",
  ),
  Flashcard(
    topicName: "Logic",
    explanation:
        "Logic involves reasoning and the principles of valid inference, often using propositional and predicate logic.",
  ),
  Flashcard(
    topicName: "Combinatorics",
    explanation:
        "Combinatorics is the branch of mathematics dealing with counting, arrangement, and combination of objects.",
  ),
  Flashcard(
    topicName: "Graph Theory",
    explanation:
        "Graph theory studies graphs, which are mathematical structures consisting of nodes (vertices) and edges.",
  ),
  Flashcard(
    topicName: "Permutations",
    explanation:
        "Permutations refer to the different ways of arranging a set of objects in a particular order.",
  ),
  Flashcard(
    topicName: "Combinations",
    explanation:
        "Combinations are selections of items from a larger set, where order does not matter.",
  ),
  Flashcard(
    topicName: "Functions",
    explanation:
        "A function is a relation that assigns each element of one set to a unique element of another set.",
  ),
  Flashcard(
    topicName: "Relations",
    explanation:
        "A relation is a set of ordered pairs of elements, often used to describe relationships between sets.",
  ),
  Flashcard(
    topicName: "Algorithms",
    explanation:
        "An algorithm is a step-by-step procedure for solving a problem or completing a task.",
  ),
  Flashcard(
    topicName: "Mathematical Induction",
    explanation:
        "Mathematical induction is a method of proving statements about integers, based on a base case and an inductive step.",
  ),
  Flashcard(
    topicName: "Boolean Algebra",
    explanation:
        "Boolean algebra deals with binary variables and logical operations such as AND, OR, and NOT.",
  ),
  Flashcard(
    topicName: "Recursion",
    explanation:
        "Recursion refers to the process of solving a problem by breaking it down into smaller subproblems of the same type.",
  ),
  Flashcard(
    topicName: "Pigeonhole Principle",
    explanation:
        "The pigeonhole principle states that if more items are placed into fewer containers than the number of items, at least one container will hold more than one item.",
  ),
  Flashcard(
    topicName: "Graph Traversal",
    explanation:
        "Graph traversal refers to the process of visiting all the nodes in a graph, often using depth-first or breadth-first search.",
  ),
  Flashcard(
    topicName: "Euler’s Theorem",
    explanation:
        "Euler’s theorem is a fundamental result in number theory that relates to the existence of Eulerian paths and circuits in graphs.",
  ),
  Flashcard(
    topicName: "Connectedness",
    explanation:
        "In graph theory, connectedness refers to the property of a graph where there is a path between every pair of vertices.",
  ),
  Flashcard(
    topicName: "Trees",
    explanation:
        "A tree is a connected acyclic graph, commonly used in computer science to represent hierarchical structures.",
  ),
  Flashcard(
    topicName: "Minimal Spanning Tree",
    explanation:
        "A minimal spanning tree is a subset of edges that connects all the vertices in a graph without cycles, with the minimum possible total edge weight.",
  ),
  Flashcard(
    topicName: "Shortest Path Problem",
    explanation:
        "The shortest path problem involves finding the path with the smallest total distance or weight between two nodes in a graph.",
  ),
  Flashcard(
    topicName: "Directed Graph",
    explanation:
        "A directed graph is a graph in which the edges have a direction, going from one vertex to another.",
  ),
  Flashcard(
    topicName: "Topological Sorting",
    explanation:
        "Topological sorting is the process of ordering the vertices of a directed acyclic graph (DAG) in a linear sequence.",
  ),
  Flashcard(
    topicName: "Network Flow",
    explanation:
        "Network flow involves determining the maximum flow of resources through a network, given capacity constraints.",
  ),
  Flashcard(
    topicName: "Dijkstra’s Algorithm",
    explanation:
        "Dijkstra’s algorithm finds the shortest path between two nodes in a graph with weighted edges.",
  ),
  Flashcard(
    topicName: "Floyd-Warshall Algorithm",
    explanation:
        "Floyd-Warshall algorithm is used for finding shortest paths between all pairs of vertices in a weighted graph.",
  ),
  Flashcard(
    topicName: "Kruskal’s Algorithm",
    explanation:
        "Kruskal’s algorithm is a minimum spanning tree algorithm that works by sorting the edges by weight and adding them in order.",
  ),
  Flashcard(
    topicName: "Bellman-Ford Algorithm",
    explanation:
        "Bellman-Ford algorithm computes shortest paths from a single source to all other vertices in a weighted graph.",
  ),
  Flashcard(
    topicName: "Greedy Algorithm",
    explanation:
        "A greedy algorithm makes the locally optimal choice at each stage with the hope of finding a global optimum.",
  ),
  Flashcard(
    topicName: "Dynamic Programming",
    explanation:
        "Dynamic programming solves complex problems by breaking them down into simpler subproblems and storing solutions to avoid redundant calculations.",
  ),
  Flashcard(
    topicName: "NP-Complete Problems",
    explanation:
        "NP-complete problems are computational problems that are believed to be very difficult to solve in polynomial time.",
  ),
  Flashcard(
    topicName: "Polynomial Time",
    explanation:
        "Polynomial time refers to an algorithm whose time complexity grows as a polynomial function of the input size.",
  ),
  Flashcard(
    topicName: "Big-O Notation",
    explanation:
        "Big-O notation describes the upper bound on the time complexity of an algorithm as the input size grows.",
  ),
  Flashcard(
    topicName: "NP-Hard Problems",
    explanation:
        "NP-hard problems are at least as hard as the hardest problems in NP, though they may not necessarily be in NP.",
  ),
];

final List<Flashcard> bmmFlashcards = [
  Flashcard(
      topicName: "Chomsky's Propaganda Model",
      explanation:
          "A theory explaining how mass media serves the interests of powerful elites by systematically filtering news and shaping public perception. It argues that media content is influenced by economic and political pressures, leading to biased reporting."),
  Flashcard(
      topicName: "5 Filters of News Selection",
      explanation:
          "This model describes how news is filtered through ownership, advertising, sourcing, flak, and anti-communism. These filters limit the diversity of viewpoints and reinforce dominant ideologies."),
  Flashcard(
      topicName: "Soft News vs. Hard News",
      explanation:
          "Soft news focuses on entertainment, human interest stories, and sensationalism, while hard news provides in-depth coverage of politics, economics, and significant global issues."),
  Flashcard(
      topicName: "Newspapers",
      explanation:
          "Print media that provides news, editorials, and advertisements. They play a crucial role in informing the public and shaping public opinion."),
  Flashcard(
      topicName: "News Framing",
      explanation:
          "The way media presents and structures news to influence public perception. It highlights certain aspects while omitting others to shape narratives."),
  Flashcard(
      topicName: "Agenda Setting",
      explanation:
          "A concept where media influences which topics are considered important by repeatedly covering certain issues, thereby shaping public discourse."),
  Flashcard(
      topicName: "Media Ownership",
      explanation:
          "Refers to the concentration of media companies under a few large corporations, which can lead to biased reporting and lack of diverse perspectives."),
  Flashcard(
      topicName: "Tabloid Journalism",
      explanation:
          "A style of journalism that focuses on sensationalism, scandal, and entertainment rather than serious news reporting."),
  Flashcard(
      topicName: "Yellow Journalism",
      explanation:
          "A type of journalism that exaggerates or distorts news to attract readers and increase sales, often prioritizing sensationalism over accuracy."),
  Flashcard(
      topicName: "Media Ethics",
      explanation:
          "The principles that guide responsible journalism, including accuracy, fairness, accountability, and minimizing harm in reporting."),
  Flashcard(
      topicName: "Digital Journalism",
      explanation:
          "A form of journalism that uses digital technologies to research, produce, and distribute news content, often allowing for real-time updates and interactivity."),
  Flashcard(
      topicName: "Broadcast Journalism",
      explanation:
          "A type of journalism that delivers news through radio and television, offering visual and audio storytelling elements."),
  Flashcard(
      topicName: "Investigative Journalism",
      explanation:
          "In-depth reporting that uncovers corruption, wrongdoing, or hidden truths, often requiring extensive research and fact-checking."),
  Flashcard(
      topicName: "Citizen Journalism",
      explanation:
          "News reporting and content creation by individuals who are not professional journalists, often using social media and online platforms."),
  Flashcard(
      topicName: "Public Relations",
      explanation:
          "A strategic communication process that builds and maintains a positive image between an organization and its audience."),
  Flashcard(
      topicName: "Media Convergence",
      explanation:
          "The merging of traditional media with digital platforms, allowing for cross-media storytelling and multimedia content delivery."),
  Flashcard(
      topicName: "Photojournalism",
      explanation:
          "The practice of using photography to tell news stories, often capturing powerful visual moments that evoke emotions."),
  Flashcard(
      topicName: "Press Freedom",
      explanation:
          "The right of journalists to report news without censorship or government interference, crucial for democratic societies."),
  Flashcard(
      topicName: "Media Literacy",
      explanation:
          "The ability to critically analyze and evaluate media messages, understanding their intent, biases, and effects on society."),
  Flashcard(
      topicName: "Social Media and Journalism",
      explanation:
          "The impact of social media platforms on news distribution, audience engagement, and the rise of viral content."),
  Flashcard(
      topicName: "Sensationalism in Media",
      explanation:
          "A practice of exaggerating news to attract viewers or readers, often prioritizing drama over factual accuracy."),
  Flashcard(
      topicName: "Fake News",
      explanation:
          "False or misleading information presented as news, often spread to influence opinions or manipulate public perception."),
  Flashcard(
      topicName: "Objectivity in Journalism",
      explanation:
          "The principle that journalists should report news impartially, without personal bias or external influences."),
  Flashcard(
      topicName: "Freedom of Speech and Media",
      explanation:
          "The legal and ethical right to express opinions and report news freely, without fear of censorship or punishment."),
  Flashcard(
      topicName: "Media Regulation",
      explanation:
          "Laws and policies that govern the functioning of media outlets, ensuring ethical standards and responsible reporting."),
  Flashcard(
      topicName: "News Anchoring",
      explanation:
          "The role of a news anchor in presenting news stories on television, often delivering breaking news and guiding discussions."),
  Flashcard(
      topicName: "Advertising in Media",
      explanation:
          "The practice of promoting products or services through media channels, influencing consumer behavior and revenue generation."),
  Flashcard(
      topicName: "Public Service Broadcasting",
      explanation:
          "Media outlets that operate for public benefit rather than profit, focusing on education, culture, and unbiased reporting."),
  Flashcard(
      topicName: "Propaganda in Media",
      explanation:
          "The use of media to spread biased or misleading information to influence public opinion or political agendas."),
  Flashcard(
      topicName: "Political Communication",
      explanation:
          "The way politicians and political institutions use media to engage with the public and shape political discourse."),
  Flashcard(
      topicName: "News Bias",
      explanation:
          "The tendency of media to present information in a way that reflects particular viewpoints, often influenced by ownership and ideology."),
  Flashcard(
      topicName: "Censorship in Media",
      explanation:
          "The suppression or restriction of news content by governments, corporations, or regulatory bodies."),
  Flashcard(
      topicName: "Crisis Communication",
      explanation:
          "The strategies used by organizations and governments to manage communication during emergencies and public relations crises."),
  Flashcard(
      topicName: "New Media",
      explanation:
          "Digital and online media platforms that enable interactive communication, including social media, blogs, and podcasts."),
  Flashcard(
      topicName: "Television Journalism",
      explanation:
          "News reporting and storytelling presented through television broadcasts, combining visuals, interviews, and reports."),
  Flashcard(
      topicName: "Infotainment",
      explanation:
          "A blend of information and entertainment in media content, often making news more engaging but sometimes reducing its seriousness."),
  Flashcard(
      topicName: "Editorial Writing",
      explanation:
          "Opinion pieces written by journalists or media organizations to express perspectives on current events and issues."),
  Flashcard(
      topicName: "Press Conferences",
      explanation:
          "Official events where journalists receive information and ask questions to public figures, government officials, or organizations."),
  Flashcard(
      topicName: "Media Psychology",
      explanation:
          "The study of how media affects human behavior, emotions, and societal perceptions."),
  Flashcard(
      topicName: "Broadcast Regulations",
      explanation:
          "Laws governing television and radio content to ensure fairness, public decency, and responsible broadcasting."),
  Flashcard(
      topicName: "Ethical Journalism",
      explanation:
          "The practice of reporting news with integrity, honesty, and adherence to moral principles."),
  Flashcard(
      topicName: "Data Journalism",
      explanation:
          "The use of data analysis and visualization in news reporting to enhance storytelling and factual accuracy."),
  Flashcard(
      topicName: "Corporate Media Influence",
      explanation:
          "The impact of large corporations on media content, often shaping news coverage to align with business interests."),
];

final List<Flashcard> bafFlashcards = [
  Flashcard(
      topicName: "Preference Shares",
      explanation:
          "A type of share that provides fixed dividends and has priority over common shares in asset distribution."),
  Flashcard(
      topicName: "Debentures",
      explanation:
          "A type of long-term debt instrument issued by companies to raise capital, usually with fixed interest payments."),
  Flashcard(
      topicName: "Financial Statements",
      explanation:
          "Formal records of financial activities, including the balance sheet, income statement, and cash flow statement."),
  Flashcard(
      topicName: "Ratio Analysis",
      explanation:
          "A technique used to evaluate financial statements by analyzing relationships between different financial metrics."),
  Flashcard(
      topicName: "Balance Sheet",
      explanation:
          "A financial statement that summarizes a company's assets, liabilities, and shareholders' equity at a specific point in time."),
  Flashcard(
      topicName: "Income Statement",
      explanation:
          "A financial report that shows a company's revenue, expenses, and net profit over a given period."),
  Flashcard(
      topicName: "Cash Flow Statement",
      explanation:
          "A financial statement that tracks the flow of cash in and out of a business, divided into operating, investing, and financing activities."),
  Flashcard(
      topicName: "Equity Shares",
      explanation:
          "Ordinary shares that represent ownership in a company and entitle shareholders to dividends and voting rights."),
  Flashcard(
      topicName: "Working Capital",
      explanation:
          "The difference between current assets and current liabilities, representing a company's short-term liquidity."),
  Flashcard(
      topicName: "Capital Budgeting",
      explanation:
          "The process of planning and evaluating long-term investment projects to determine their profitability and feasibility."),
  Flashcard(
      topicName: "Dividend Policy",
      explanation:
          "A company's approach to distributing profits to shareholders in the form of dividends or reinvestment."),
  Flashcard(
      topicName: "Leverage",
      explanation:
          "The use of borrowed capital to increase potential returns on investment, measured through financial ratios."),
  Flashcard(
      topicName: "Cost of Capital",
      explanation:
          "The cost a company incurs to finance its operations, including debt and equity financing."),
  Flashcard(
      topicName: "Return on Investment (ROI)",
      explanation:
          "A financial metric used to measure the profitability of an investment relative to its cost."),
  Flashcard(
      topicName: "Break-even Analysis",
      explanation:
          "A financial calculation used to determine the level of sales needed to cover total costs, resulting in neither profit nor loss."),
  Flashcard(
      topicName: "Depreciation",
      explanation:
          "The allocation of an asset's cost over its useful life to account for wear and tear or obsolescence."),
  Flashcard(
      topicName: "Amortization",
      explanation:
          "The gradual reduction of a financial liability or intangible asset over time through scheduled payments."),
  Flashcard(
      topicName: "Liquidity Ratios",
      explanation:
          "Financial metrics used to assess a company's ability to meet short-term obligations, such as the current ratio and quick ratio."),
  Flashcard(
      topicName: "Solvency Ratios",
      explanation:
          "Ratios that measure a company's ability to meet long-term debt obligations, such as the debt-to-equity ratio."),
  Flashcard(
      topicName: "Market Capitalization",
      explanation:
          "The total market value of a company's outstanding shares, calculated as share price multiplied by total shares."),
  Flashcard(
      topicName: "Inventory Turnover Ratio",
      explanation:
          "A financial metric that measures how efficiently a company manages its inventory by calculating the number of times inventory is sold and replaced."),
  Flashcard(
      topicName: "Capital Structure",
      explanation:
          "The mix of a company's long-term debt and equity financing used to fund its operations and growth."),
  Flashcard(
      topicName: "Earnings Per Share (EPS)",
      explanation:
          "A key financial ratio that indicates the profitability of a company by dividing net income by the number of outstanding shares."),
  Flashcard(
      topicName: "Price-to-Earnings (P/E) Ratio",
      explanation:
          "A valuation ratio that compares a company's share price to its earnings per share, indicating investor sentiment."),
  Flashcard(
      topicName: "Fixed Costs",
      explanation:
          "Business costs that remain constant regardless of the level of production or sales, such as rent and salaries."),
  Flashcard(
      topicName: "Variable Costs",
      explanation:
          "Costs that change in proportion to production or sales volume, such as raw materials and direct labor."),
  Flashcard(
      topicName: "Budgeting",
      explanation:
          "The process of creating a financial plan to allocate resources and control expenses within an organization."),
  Flashcard(
      topicName: "Auditing",
      explanation:
          "The independent examination of financial statements to ensure accuracy, compliance, and reliability."),
  Flashcard(
      topicName: "Corporate Governance",
      explanation:
          "The system of rules, practices, and processes by which a company is directed and controlled."),
  Flashcard(
      topicName: "Risk Management",
      explanation:
          "The identification and assessment of financial risks followed by strategies to mitigate or control them."),
  Flashcard(
      topicName: "Mutual Funds",
      explanation:
          "Investment vehicles that pool money from multiple investors to purchase diversified assets, managed by professionals."),
  Flashcard(
      topicName: "Derivatives",
      explanation:
          "Financial instruments whose value is derived from underlying assets, including futures, options, and swaps."),
  Flashcard(
      topicName: "Stock Market",
      explanation:
          "A marketplace where shares of publicly traded companies are bought and sold."),
  Flashcard(
      topicName: "Forex Market",
      explanation:
          "The global marketplace for trading currencies, influenced by economic factors and geopolitical events."),
  Flashcard(
      topicName: "Credit Rating",
      explanation:
          "An assessment of a borrower's creditworthiness, influencing their ability to secure loans at favorable terms."),
  Flashcard(
      topicName: "Cost Accounting",
      explanation:
          "A financial discipline that tracks, records, and analyzes costs associated with production and business operations."),
  Flashcard(
      topicName: "Management Accounting",
      explanation:
          "The use of accounting data to assist management in decision-making, planning, and performance evaluation."),
  Flashcard(
      topicName: "Investment Banking",
      explanation:
          "A segment of banking focused on capital raising, mergers, and acquisitions for corporations and governments."),
  Flashcard(
      topicName: "Taxation",
      explanation:
          "The system by which governments impose financial obligations on individuals and businesses to generate revenue."),
  Flashcard(
      topicName: "Indirect Taxes",
      explanation:
          "Taxes that are levied on goods and services rather than on income, such as VAT and GST."),
  Flashcard(
      topicName: "Direct Taxes",
      explanation:
          "Taxes imposed directly on individuals and corporations, including income tax and corporate tax."),
  Flashcard(
      topicName: "Bank Reconciliation",
      explanation:
          "The process of matching a company's financial records with bank statements to ensure accuracy."),
  Flashcard(
      topicName: "Fund Flow Statement",
      explanation:
          "A financial statement that highlights the inflows and outflows of funds within a business."),
  Flashcard(
      topicName: "Forensic Accounting",
      explanation:
          "The use of accounting techniques to investigate financial fraud and legal disputes."),
  Flashcard(
      topicName: "Accounting Standards",
      explanation:
          "Rules and principles that guide financial reporting to ensure consistency and transparency."),
  Flashcard(
      topicName: "Financial Planning",
      explanation:
          "The process of forecasting financial needs and creating strategies for wealth management and business growth."),
];
