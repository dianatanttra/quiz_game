import 'question_model.dart';

List<QuizQuestion> bafQuestions = [
  // Redemption of Preference Shares
  QuizQuestion("What is meant by redeeming preference shares?", {
    "Repaying shareholders": true,
    "Issuing new shares": false,
    "Increasing capital": false,
    "Selling shares to the public": false,
  }),
  QuizQuestion(
      "Which account is credited during preference share redemption?", {
    "Share Capital Account": false,
    "Debenture Account": false,
    "Capital Redemption Reserve": true,
    "Profit and Loss Account": false,
  }),
  QuizQuestion("How can preference shares be redeemed?", {
    "Only capital gains": false,
    "Only bank loans": false,
    "Profits or fresh share issues": true,
    "Only reserves": false,
  }),
  QuizQuestion("What happens to share capital after redemption?", {
    "It remains unchanged": false,
    "It decreases": true,
    "It increases": false,
    "Converted into equity shares": false,
  }),
  QuizQuestion("Which is NOT required for preference share redemption?", {
    "Creating a Capital Redemption Reserve": false,
    "Sufficient profits": false,
    "Issuing a fresh loan": true,
    "Using premium reserves": false,
  }),

  // Redemption of Debentures
  QuizQuestion("What is debenture redemption?", {
    "Selling debentures to the public": false,
    "Issuing new debentures": false,
    "Repaying debenture holders": true,
    "Declaring dividends": false,
  }),
  QuizQuestion("How can debentures be redeemed?", {
    "Issuing preference shares": false,
    "Taking a loan": false,
    "Lump sum payment": true,
    "Declaring bankruptcy": false,
  }),
  QuizQuestion("Which account is debited during redemption?", {
    "Debenture Account": true,
    "Capital Account": false,
    "Profit and Loss Account": false,
    "Shareholders' Fund": false,
  }),
  QuizQuestion("Why is a Debenture Redemption Reserve required?", {
    "To increase share capital": false,
    "To pay interest": false,
    "To ensure funds for repayment": true,
    "To declare dividends": false,
  }),
  QuizQuestion("Which method is NOT used for debenture redemption?", {
    "Bonus shares": true,
    "Sinking fund": false,
    "Purchase from open market": false,
    "Conversion into equity shares": false,
  }),

  // Financial Statements Analysis
  QuizQuestion("Which statement shows profitability?", {
    "Income Statement": true,
    "Balance Sheet": false,
    "Cash Flow Statement": false,
    "Shareholders' Equity": false,
  }),
  QuizQuestion("What does a balance sheet represent?", {
    "Company’s profitability": false,
    "Financial position at a specific time": true,
    "Cash flow over time": false,
    "Company’s expenses": false,
  }),
  QuizQuestion("Where are liabilities listed in the balance sheet?", {
    "Revenue": false,
    "Expenses": false,
    "Liabilities and Equity": true,
    "Assets": false,
  }),
  QuizQuestion("What is the purpose of financial statement analysis?", {
    "To determine dividend rates": false,
    "To record transactions": false,
    "To assess financial performance": true,
    "To calculate share prices": false,
  }),
  QuizQuestion("Which statement tracks cash movements?", {
    "Trial Balance": false,
    "Balance Sheet": false,
    "Income Statement": false,
    "Cash Flow Statement": true,
  }),

  // Ratio Analysis
  QuizQuestion("What does the Current Ratio measure?", {
    "Short-term financial stability": true,
    "Long-term debt capacity": false,
    "Profitability": false,
    "Operational efficiency": false,
  }),
  QuizQuestion("How is Debt-to-Equity Ratio calculated?", {
    "Current Assets / Liabilities": false,
    "Net Profit / Revenue": false,
    "Total Debt / Total Equity": true,
    "Total Equity / Total Debt": false,
  }),
  QuizQuestion("Which ratio measures profitability?", {
    "Debt-to-Equity Ratio": false,
    "Current Ratio": false,
    "Inventory Turnover Ratio": false,
    "Net Profit Margin": true,
  }),
  QuizQuestion("What does a higher Return on Equity (ROE) indicate?", {
    "More taxes paid": false,
    "Lower financial stability": false,
    "Higher debt burden": false,
    "Higher profitability for shareholders": true,
  }),
  QuizQuestion("Which ratio evaluates short-term payment ability?", {
    "Inventory Turnover": false,
    "Return on Investment": false,
    "Debt Ratio": false,
    "Liquidity Ratio": true,
  }),

  // Additional Financial Concepts
  QuizQuestion("Which ratio measures inventory efficiency?", {
    "Debt Ratio": false,
    "Profit Margin": false,
    "Current Ratio": false,
    "Inventory Turnover Ratio": true,
  }),
  QuizQuestion("An increasing Current Ratio suggests?", {
    "Poor profitability": false,
    "Lower revenue": false,
    "Higher debt": false,
    "Stronger liquidity": true,
  }),
  QuizQuestion("Which ratio indicates financial leverage?", {
    "Quick Ratio": false,
    "Inventory Turnover": false,
    "Gross Profit Margin": false,
    "Debt Ratio": true,
  }),
  QuizQuestion("A low Quick Ratio suggests?", {
    "Liquidity issues": true,
    "Higher profitability": false,
    "Strong investment returns": false,
    "Low liabilities": false,
  }),
  QuizQuestion("A high Net Profit Margin means?", {
    "Lower revenue": false,
    "More debt": false,
    "Higher tax payments": false,
    "Better profitability": true,
  }),

  // Debenture Redemption
  QuizQuestion("How does redeeming debentures affect liabilities?", {
    "Liabilities increase": false,
    "Liabilities remain unchanged": false,
    "Converted into equity": false,
    "Liabilities decrease": true,
  }),
  QuizQuestion("What is a Sinking Fund used for?", {
    "Issuing new shares": false,
    "Future debt repayment": true,
    "Dividend payments": false,
    "Daily operations": false,
  }),
  QuizQuestion("What happens during debenture conversion?", {
    "Issuing additional debentures": false,
    "Changing debentures into shares": true,
    "Selling to new investors": false,
    "Cancelling debentures": false,
  }),
  QuizQuestion("What factor affects debenture redemption?", {
    "Market conditions": false,
    "Number of employees": false,
    "Tax policies": false,
    "Availability of funds": true,
  }),
  QuizQuestion("What happens after debentures are redeemed?", {
    "Company’s debt increases": false,
    "Equity is reduced": false,
    "New shares are issued": false,
    "Debt decreases": true,
  }),
];

final List<QuizQuestion> dsQuestions = [
  QuizQuestion("What is a stack in data structures?", {
    "A collection of elements with First-In-First-Out (FIFO) principle": false,
    "A type of tree structure": false,
    "A collection of elements with Last-In-First-Out (LIFO) principle": true,
    "A collection of random elements": false
  }),
  QuizQuestion("Which operation adds an element to the top of the stack?", {
    "Pop": false,
    "Peek": false,
    "Enqueue": false,
    "Push": true,
  }),
  QuizQuestion(
      "Which operation removes an element from the top of the stack?", {
    "Peek": false,
    "Push": false,
    "Dequeue": false,
    "Pop": true,
  }),
  QuizQuestion("What does the 'peek' operation in a stack do?", {
    "Removes the top element": false,
    "Returns the top element without removing it": true,
    "Adds an element to the stack": false,
    "Clears the stack": false
  }),
  QuizQuestion("What is infix notation?", {
    "A notation where the operator is before the operands": false,
    "A notation where the operator is between the operands": true,
    "A notation where the operator is after the operands": false,
    "A notation used only in assembly language": false
  }),
  QuizQuestion("What is postfix notation?", {
    "A notation where the operator is between the operands": false,
    "A notation where the operator is after the operands": true,
    "A notation where the operator is before the operands": false,
    "A notation that only works for addition": false
  }),
  QuizQuestion("What is prefix notation?", {
    "A notation where the operator is before the operands": true,
    "A notation where the operator is after the operands": false,
    "A notation where the operator is between the operands": false,
    "A notation that cannot be evaluated": false
  }),
  QuizQuestion("What is a queue in data structures?", {
    "A type of tree structure": false,
    "A collection of elements with First-In-First-Out (FIFO) principle": true,
    "A collection of elements with Last-In-First-Out (LIFO) principle": false,
    "A type of stack": false
  }),
  QuizQuestion("Which operation adds an element to the rear of the queue?",
      {"Dequeue": false, "Peek": false, "Enqueue": true, "Push": false}),
  QuizQuestion(
      "Which operation removes an element from the front of the queue?",
      {"Peek": false, "Enqueue": false, "Dequeue": true, "Pop": false}),
  QuizQuestion("What is a circular queue?", {
    "A queue that can only store integers": false,
    "A queue with unlimited size": false,
    "A queue where the last element points to the first element": true,
    "A queue that does not follow FIFO": false
  }),
  QuizQuestion("What is recursion in programming?", {
    "A type of data structure": false,
    "A loop that runs indefinitely": false,
    "A function that calls itself": true,
    "A way to store data in arrays": false
  }),
  QuizQuestion("What is the base case in recursion?", {
    "The condition that stops the recursion": true,
    "The first call of the recursive function": false,
    "The last call of the recursive function": false,
    "A case where recursion is not needed": false
  }),
  QuizQuestion("What is the Tower of Hanoi problem?", {
    "A sorting algorithm": false,
    "A mathematical puzzle that involves moving disks between rods": true,
    "A type of data structure": false,
    "A way to implement stacks": false
  }),
  QuizQuestion("What is a linked list?", {
    "A linear data structure where each element points to the next": true,
    "A type of tree structure": false,
    "A collection of elements with LIFO principle": false,
    "A static data structure like an array": false
  }),
  QuizQuestion("What is a singly linked list?", {
    "A linked list where each node points to both the next and previous nodes":
        false,
    "A linked list where each node points to the next node": true,
    "A linked list that forms a circle": false,
    "A list where elements are stored in an array": false
  }),
  QuizQuestion("What is a doubly linked list?", {
    "A linked list where each node points to both the next and previous nodes":
        true,
    "A linked list that forms a circle": false,
    "A linked list where each node points only to the next node": false,
    "A list where elements are sorted automatically": false
  }),
  QuizQuestion("What is a circular linked list?", {
    "A linked list where each node points to both the next and previous nodes":
        false,
    "A linked list where each node points only to the next node": false,
    "A linked list where the last node points to the first node": true,
    "A linked list used only in sorting": false
  }),
  QuizQuestion("What is the time complexity of Bubble Sort in the worst case?",
      {"O(n log n)": false, "O(n)": false, "O(n^2)": true, "O(1)": false}),
  QuizQuestion("What is the time complexity of Selection Sort?", {
    "O(n log n)": false,
    "O(n)": false,
    "O(1)": false,
    "O(n^2)": true,
  }),
  QuizQuestion("What is the time complexity of Merge Sort?",
      {"O(n)": false, "O(n log n)": true, "O(n^2)": false, "O(1)": false}),
  QuizQuestion("What is a heap in data structures?", {
    "A type of queue": false,
    "A specialized tree-based data structure": true,
    "A type of linked list": false,
    "A way to store elements in sorted order": false
  }),
  QuizQuestion("What is Heapsort?", {
    "A sorting algorithm that uses a queue": false,
    "A sorting algorithm that uses a stack": false,
    "A comparison-based sorting algorithm that uses a heap": true,
    "A sorting algorithm with O(1) complexity": false
  }),
  QuizQuestion("What is the time complexity of Heapsort?",
      {"O(n^2)": false, "O(n)": false, "O(n log n)": true, "O(1)": false}),
  QuizQuestion("What is Radix Sort?", {
    "A comparison-based sorting algorithm": false,
    "A sorting algorithm that uses a heap": false,
    "A non-comparison-based sorting algorithm that sorts numbers by their digits":
        true,
    "A sorting algorithm that only works for characters": false
  }),
  QuizQuestion("What is the time complexity of Radix Sort?", {
    "O(n log n)": false,
    "O(1)": false,
    "O(n^2)": false,
    "O(nk)": true,
  }),
  QuizQuestion("What is a binary search tree?", {
    "A tree where each node has at most two children and left child is less than the parent":
        true,
    "A tree where each node has at most one child": false,
    "A tree where each node has at most two children and left child is greater than the parent":
        false,
    "A tree where all nodes are connected in a cycle": false
  }),
  QuizQuestion(
      "What is the time complexity of searching in a binary search tree?",
      {"O(n^2)": false, "O(n)": false, "O(log n)": true, "O(1)": false}),
  QuizQuestion("What is a graph in data structures?", {
    "A type of tree structure": false,
    "A list where elements are stored in arrays": false,
    "A type of linked list": false,
    "A collection of nodes connected by edges": true,
  })
];

final List<QuizQuestion> bmsQuestions = [
  // Introduction to Services (5 Questions)
  QuizQuestion('What is the primary characteristic of a service?', {
    "Tangibility": false,
    "Intangibility": true,
    "Durability": false,
    "Standardization": false,
  }),
  QuizQuestion('Which of the following is an example of a pure service?', {
    "Restaurant": false,
    "Consulting": true,
    "Retail store": false,
    "Manufacturing": false,
  }),
  QuizQuestion('What is the key difference between goods and services?', {
    "Goods are tangible, services are intangible": true,
    "Goods are perishable, services are not": false,
    "Goods are standardized, services are not": false,
    "Goods are produced, services are consumed": false,
  }),
  QuizQuestion('Which of the following is NOT a characteristic of services?', {
    "Tangibility": true,
    "Perishability": false,
    "Heterogeneity": false,
    "Inseparability": false,
  }),
  QuizQuestion('What does "perishability" mean in the context of services?', {
    "Services cannot be stored for future use": true,
    "Services are inconsistent in quality": false,
    "Services are intangible": false,
    "Services require customer involvement": false,
  }),

  // 5 I's of Services (7 Questions)
  QuizQuestion('What do the 5 I\'s of services stand for?', {
    "Intangibility, Inconsistency, Inseparability, Inventory, Involvement":
        true,
    "Innovation, Integration, Interaction, Inventory, Involvement": false,
    "Intangibility, Integration, Inseparability, Inventory, Interaction": false,
    "Intangibility, Inconsistency, Integration, Inventory, Involvement": false,
  }),
  QuizQuestion(
      'Which of the 5 I\'s refers to the inability to store services?', {
    "Intangibility": false,
    "Inventory": true,
    "Inconsistency": false,
    "Inseparability": false,
  }),
  QuizQuestion('What does "Inseparability" in services mean?', {
    "Services cannot be separated from their providers": true,
    "Services are inconsistent in quality": false,
    "Services cannot be stored": false,
    "Services require customer involvement": false,
  }),
  QuizQuestion(
      'Which of the 5 I\'s refers to the variability in service quality?', {
    "Inconsistency": true,
    "Intangibility": false,
    "Inseparability": false,
    "Inventory": false,
  }),
  QuizQuestion('What does "Involvement" in the 5 I\'s refer to?', {
    "Customer participation in the service process": true,
    "Employee involvement in service delivery": false,
    "The integration of technology in services": false,
    "The interaction between service providers": false,
  }),
  QuizQuestion(
      'Which of the 5 I\'s is most closely related to customer experience?', {
    "Involvement": true,
    "Intangibility": false,
    "Inseparability": false,
    "Inventory": false,
  }),
  QuizQuestion('What is the impact of "Intangibility" on service marketing?', {
    "It makes services harder to evaluate before purchase": true,
    "It makes services easier to standardize": false,
    "It reduces the need for customer involvement": false,
    "It increases the perishability of services": false,
  }),

  // Good Service Continuum (5 Questions)
  QuizQuestion('What is the Good Service Continuum?', {
    "A model that measures service quality from bad to good": true,
    "A framework for classifying services": false,
    "A tool for managing service inventory": false,
    "A method for pricing services": false,
  }),
  QuizQuestion(
      'Which of the following is a key factor in the Good Service Continuum?', {
    "Customer expectations": true,
    "Service tangibility": false,
    "Service standardization": false,
    "Service pricing": false,
  }),
  QuizQuestion('What is the goal of the Good Service Continuum?', {
    "To align service delivery with customer expectations": true,
    "To reduce service costs": false,
    "To increase service tangibility": false,
    "To standardize service processes": false,
  }),
  QuizQuestion(
      'Which of the following is NOT a component of the Good Service Continuum?',
      {
        "Service pricing": true,
        "Customer expectations": false,
        "Service delivery": false,
        "Customer satisfaction": false,
      }),
  QuizQuestion('How does the Good Service Continuum help businesses?', {
    "By identifying gaps between customer expectations and service delivery":
        true,
    "By reducing the cost of service delivery": false,
    "By standardizing all services": false,
    "By increasing service tangibility": false,
  }),

  // 5 P's of Service Marketing (7 Questions)
  QuizQuestion('What are the 5 P\'s of service marketing?', {
    "Product, Price, Place, Promotion, People": true,
    "Product, Price, Place, Promotion, Process": false,
    "Product, Price, Place, Promotion, Physical Evidence": false,
    "Product, Price, Place, Promotion, Packaging": false,
  }),
  QuizQuestion(
      'Which of the 5 P\'s refers to the environment in which the service is delivered?',
      {
        "Physical Evidence": true,
        "People": false,
        "Process": false,
        "Place": false,
      }),
  QuizQuestion('What does the "Process" in the 5 P\'s refer to?', {
    "The procedures and flow of activities in service delivery": true,
    "The pricing strategy of the service": false,
    "The promotion of the service": false,
    "The physical environment of the service": false,
  }),
  QuizQuestion(
      'Which of the 5 P\'s is most closely related to employee-customer interaction?',
      {
        "People": true,
        "Process": false,
        "Physical Evidence": false,
        "Place": false,
      }),
  QuizQuestion(
      'What is the role of "Place" in the 5 P\'s of service marketing?', {
    "To determine where and how the service is delivered": true,
    "To set the price of the service": false,
    "To promote the service": false,
    "To design the service process": false,
  }),
  QuizQuestion(
      'Which of the 5 P\'s focuses on communicating the value of the service to customers?',
      {
        "Promotion": true,
        "Price": false,
        "Place": false,
        "Process": false,
      }),
  QuizQuestion(
      'What is the importance of "Physical Evidence" in service marketing?', {
    "It helps customers evaluate the service before purchase": true,
    "It reduces the cost of service delivery": false,
    "It standardizes the service process": false,
    "It increases employee involvement": false,
  }),

  // Service Classification (People and Equipment Based) (6 Questions)
  QuizQuestion('How are services classified based on people and equipment?', {
    "People-based services and equipment-based services": true,
    "Tangible services and intangible services": false,
    "Standardized services and customized services": false,
    "Durable services and perishable services": false,
  }),
  QuizQuestion(
      'Which of the following is an example of a people-based service?', {
    "Haircut": true,
    "ATM banking": false,
    "Car wash": false,
    "Vending machine": false,
  }),
  QuizQuestion(
      'Which of the following is an example of an equipment-based service?', {
    "ATM banking": true,
    "Consulting": false,
    "Teaching": false,
    "Haircut": false,
  }),
  QuizQuestion('What is a key challenge of people-based services?', {
    "Inconsistency in service quality": true,
    "High equipment costs": false,
    "Lack of customer involvement": false,
    "Difficulty in standardizing processes": false,
  }),
  QuizQuestion('What is a key advantage of equipment-based services?', {
    "Consistency in service delivery": true,
    "Higher customer involvement": false,
    "Lower initial investment": false,
    "Greater flexibility in service design": false,
  }),
  QuizQuestion(
      'Which of the following is a hybrid service (both people and equipment-based)?',
      {
        "Airline travel": true,
        "ATM banking": false,
        "Haircut": false,
        "Consulting": false,
      }),

  // 5 Moments of Truth (6 Questions)
  QuizQuestion('What are the 5 Moments of Truth in service management?', {
    "First impression, service delivery, problem resolution, billing, follow-up":
        true,
    "First impression, service design, delivery, feedback, follow-up": false,
    "First impression, service delivery, customer feedback, billing, loyalty":
        false,
    "First impression, service delivery, problem resolution, feedback, loyalty":
        false,
  }),
  QuizQuestion(
      'Which Moment of Truth refers to the initial interaction with the customer?',
      {
        "First impression": true,
        "Service delivery": false,
        "Problem resolution": false,
        "Billing": false,
      }),
  QuizQuestion(
      'What is the importance of the "Problem Resolution" Moment of Truth?', {
    "It determines customer loyalty and satisfaction": true,
    "It ensures service standardization": false,
    "It reduces service costs": false,
    "It improves service tangibility": false,
  }),
  QuizQuestion(
      'Which Moment of Truth is most critical for customer retention?', {
    "Problem resolution": true,
    "First impression": false,
    "Service delivery": false,
    "Billing": false,
  }),
  QuizQuestion('What is the role of "Follow-up" in the 5 Moments of Truth?', {
    "To ensure customer satisfaction and build loyalty": true,
    "To collect feedback for service improvement": false,
    "To resolve any remaining issues": false,
    "To finalize billing and payments": false,
  }),
  QuizQuestion(
      'Which Moment of Truth is most closely related to service recovery?', {
    "Problem resolution": true,
    "First impression": false,
    "Service delivery": false,
    "Billing": false,
  }),

  // Levels of Product (6 Questions)
  QuizQuestion(
      'What are the three levels of a product in service management?', {
    "Core product, actual product, augmented product": true,
    "Core product, tangible product, intangible product": false,
    "Core product, service product, augmented product": false,
    "Core product, actual product, service product": false,
  }),
  QuizQuestion(
      'Which level of the product refers to the basic benefit the customer receives?',
      {
        "Core product": true,
        "Actual product": false,
        "Augmented product": false,
        "Tangible product": false,
      }),
  QuizQuestion('What does the "Augmented Product" include?', {
    "Additional services and benefits beyond the core product": true,
    "The physical attributes of the product": false,
    "The basic functionality of the product": false,
    "The pricing strategy of the product": false,
  }),
  QuizQuestion('Which level of the product includes branding and packaging?', {
    "Actual product": true,
    "Core product": false,
    "Augmented product": false,
    "Tangible product": false,
  }),
  QuizQuestion(
      'What is the role of the "Core Product" in service management?', {
    "To deliver the fundamental benefit the customer seeks": true,
    "To enhance the customer experience with additional features": false,
    "To differentiate the product from competitors": false,
    "To communicate the value of the product": false,
  }),
  QuizQuestion(
      'Which of the following is an example of an "Augmented Product"?', {
    "Free maintenance and after-sales service": true,
    "The basic functionality of a smartphone": false,
    "The physical design of a laptop": false,
    "The core benefit of a consulting service": false,
  }),

  // Additional Questions (8 Questions)
  QuizQuestion('What is the role of customer feedback in service management?', {
    "To improve service quality and customer satisfaction": true,
    "To reduce service costs": false,
    "To standardize service processes": false,
    "To increase service tangibility": false,
  }),
  QuizQuestion('What is the importance of service standardization?', {
    "To ensure consistent quality across service delivery": true,
    "To reduce customer involvement": false,
    "To increase service tangibility": false,
    "To lower service prices": false,
  }),
  QuizQuestion('What is the primary goal of service recovery?', {
    "To regain customer trust and satisfaction after a service failure": true,
    "To reduce service costs": false,
    "To standardize service processes": false,
    "To increase service tangibility": false,
  }),
  QuizQuestion('What is the role of technology in modern service management?', {
    "To enhance service delivery and customer experience": true,
    "To reduce the need for human interaction": false,
    "To standardize all services": false,
    "To eliminate service failures": false,
  }),
  QuizQuestion(
      'What is the importance of employee training in service management?', {
    "To ensure high-quality service delivery": true,
    "To reduce service costs": false,
    "To standardize service processes": false,
    "To increase service tangibility": false,
  }),
  QuizQuestion('What is the impact of "Heterogeneity" on service delivery?', {
    "It leads to variability in service quality": true,
    "It makes services easier to standardize": false,
    "It reduces the need for customer involvement": false,
    "It increases service tangibility": false,
  }),
  QuizQuestion(
      'What is the role of "Physical Evidence" in service marketing?', {
    "To help customers evaluate the service before purchase": true,
    "To reduce the cost of service delivery": false,
    "To standardize the service process": false,
    "To increase employee involvement": false,
  }),
  QuizQuestion(
      'What is the importance of "Customer Involvement" in service delivery?', {
    "It enhances the customer experience and satisfaction": true,
    "It reduces the need for employee training": false,
    "It standardizes service processes": false,
    "It increases service tangibility": false,
  }),
];

final List<QuizQuestion> dmQuestions = [
  QuizQuestion("What is a relation in mathematics?", {
    "A function": false,
    "A set of ordered pairs": true,
    "A type of graph": false,
    "A collection of equations": false
  }),
  QuizQuestion(
      "Which algorithm is used to find the transitive closure of a relation?", {
    "Warshall's algorithm": true,
    "Dijkstra's algorithm": false,
    "Prim's algorithm": false,
    "Floyd's algorithm": false
  }),
  QuizQuestion("What is a digraph in graph theory?", {
    "An undirected graph": false,
    "A directed graph": true,
    "A tree": false,
    "A weighted graph": false
  }),
  QuizQuestion("What is the degree of a vertex in a graph?", {
    "The number of loops in the graph": false,
    "The length of the shortest path": false,
    "The number of edges connected to it": true,
    "The number of vertices in the graph": false
  }),
  QuizQuestion("What is an Eulerian path?", {
    "A path that visits every vertex exactly once": false,
    "A cycle that includes all vertices": false,
    "A path that visits every edge at least twice": false,
    "A path that visits every edge exactly once": true
  }),
  QuizQuestion("What is a labeled tree?", {
    "A tree with no labels": false,
    "A graph with cycles": false,
    "A tree with labeled nodes or edges": true,
    "A tree with only one level": false
  }),
  QuizQuestion("Which algorithm is used for tree searching?", {
    "Bubble Sort": false,
    "Quick Sort": false,
    "Breadth-First Search": false,
    "Depth-First Search": true
  }),
  QuizQuestion("What is a spanning tree?", {
    "A tree with only leaf nodes": false,
    "A subgraph that is a tree and includes all vertices": true,
    "A graph with no cycles": false,
    "A tree with the maximum number of edges": false
  }),
  QuizQuestion("What is the importance of probability?", {
    "To determine exact outcomes": false,
    "To solve algebraic equations": false,
    "To count objects in a set": false,
    "To quantify uncertainty": true
  }),
  QuizQuestion("What is conditional probability?", {
    "The probability of an event given that another event has occurred": true,
    "The probability of two independent events": false,
    "The probability of an event in a vacuum": false,
    "The probability of a single random event": false
  }),
  QuizQuestion("What is Bayes' Theorem used for?", {
    "Updating probabilities based on new information": true,
    "Calculating the mean of a distribution": false,
    "Finding the median of a dataset": false,
    "Determining the mode of a dataset": false
  }),
  QuizQuestion("What is a binomial distribution?", {
    "A distribution with a single outcome": false,
    "A continuous distribution": false,
    "A distribution with two possible outcomes": true,
    "A distribution with infinite outcomes": false
  }),
  QuizQuestion("What is a Poisson distribution?", {
    "A distribution that models the number of events in a fixed interval": true,
    "A distribution that models continuous data": false,
    "A distribution that models binary outcomes": false,
    "A distribution with no fixed intervals": false
  }),
  QuizQuestion("What is a normal distribution?", {
    "A bell-shaped distribution": true,
    "A distribution with two peaks": false,
    "A distribution with no mean": false,
    "A distribution with skewed tails": false
  }),
  QuizQuestion("What is a hypothesis in statistics?", {
    "A statement that can be tested": true,
    "A statement that is always true": false,
    "A statement that is always false": false,
    "A random guess": false
  }),
  QuizQuestion("What is a p-value?", {
    "The probability of observing the data given the null hypothesis": true,
    "The probability of the null hypothesis being true": false,
    "The probability of the alternative hypothesis being true": false,
    "The probability of rejecting the null hypothesis": false
  }),
  QuizQuestion("What is correlation?", {
    "A measure of the relationship between two variables": true,
    "A measure of the central tendency": false,
    "A measure of the spread of a dataset": false,
    "A measure of the mean value": false
  }),
  QuizQuestion("What is regression?", {
    "A method to model the relationship between variables": true,
    "A method to calculate the mean": false,
    "A method to find the median": false,
    "A method to count data points": false
  }),
  QuizQuestion("What is expected value?", {
    "The most likely value of a random variable": false,
    "The median value of a random variable": false,
    "The highest observed value": false,
    "The long-run average value of a random variable": true
  }),
  QuizQuestion("What is variance in statistics?", {
    "A measure of the spread of a dataset": true,
    "A measure of the central tendency": false,
    "A measure of the correlation between variables": false,
    "A measure of probability": false
  }),
  QuizQuestion("What is standard deviation?", {
    "The square of the variance": false,
    "The mean of the squared differences": false,
    "The sum of all deviations": false,
    "The square root of the variance": true
  }),
  QuizQuestion("What is a binary tree?", {
    "A tree where each node has at most two children": true,
    "A tree with only one child per node": false,
    "A tree with cycles": false,
    "A tree with no specific structure": false,
  }),
  QuizQuestion("What is a probability distribution?", {
    "A function that describes the likelihood of outcomes": true,
    "A function that describes the median of a dataset": false,
    "A function that gives the standard deviation": false,
    "A function that describes the mean of a dataset": false,
  }),
  QuizQuestion("What is the rule of counting in probability?", {
    "The rule of large numbers": false,
    "The fundamental principle of counting": true,
    "The rule of averages": false,
    "The rule of probability mass": false,
  }),
  QuizQuestion("What is the binomial theorem?", {
    "A theorem that describes the mean of a binomial distribution": false,
    "A theorem that describes the expansion of powers of a binomial": true,
    "A theorem that describes the variance of a binomial distribution": false,
    "A theorem that describes normal distribution": false,
  }),
  QuizQuestion("What is the Poisson process?", {
    "A process that models continuous data": false,
    "A process that models random events over time": true,
    "A process that models binary outcomes": false,
    "A process that models sample distributions": false,
  }),
  QuizQuestion("What is the central limit theorem?", {
    "A theorem that describes the distribution of medians": false,
    "A theorem that describes the distribution of sample means": true,
    "A theorem that describes the probability mass function": false,
    "A theorem that describes the distribution of individual data points":
        false,
  }),
  QuizQuestion("What is a hypothesis in statistics?", {
    "A statement that is always false": false,
    "A statement that is always true": false,
    "A statement that can be tested": true,
    "A statement that describes a dataset": false,
  }),
  QuizQuestion("What is a p-value?", {
    "The probability of the null hypothesis being true": false,
    "The probability of observing the data given the null hypothesis": true,
    "The probability of the alternative hypothesis being true": false,
    "The probability of a sample mean being exactly correct": false,
  }),
  QuizQuestion("What is a confidence interval?", {
    "A single value that estimates the parameter": false,
    "A range of values that likely contains the true parameter": true,
    "A value that is always correct": false,
    "A range of values that contains all possible outcomes": false,
  }),
  QuizQuestion("What is a type I error?", {
    "Failing to reject a false null hypothesis": false,
    "Rejecting a true null hypothesis": true,
    "Accepting a true alternative hypothesis": false,
    "Rejecting a false alternative hypothesis": false,
  }),
  QuizQuestion("What is a type II error?", {
    "Failing to reject a false null hypothesis": true,
    "Rejecting a true null hypothesis": false,
    "Accepting a true alternative hypothesis": false,
    "Misinterpreting a sample mean": false,
  }),
  QuizQuestion("What is the significance level?", {
    "The probability of rejecting the null hypothesis when it is true": true,
    "The probability of the alternative hypothesis being true": false,
    "The probability of accepting the null hypothesis when it is false": false,
    "The probability of a Type II error": false,
  }),
  QuizQuestion("What is a large sample test?", {
    "A test used for categorical data": false,
    "A test used when the sample size is large": true,
    "A test used when the sample size is small": false,
    "A test used for qualitative analysis": false,
  }),
  QuizQuestion("What is the mean in statistics?", {
    "The middle value of a dataset": false,
    "The most frequent value in a dataset": false,
    "The average value of a dataset": true,
    "The sum of all values in a dataset": false,
  }),
  QuizQuestion("What is the median in statistics?", {
    "The average value of a dataset": false,
    "The middle value of a dataset": true,
    "The most frequent value in a dataset": false,
    "The range of a dataset": false,
  }),
  QuizQuestion("What is the mode in statistics?", {
    "The most frequent value in a dataset": true,
    "The average value of a dataset": false,
    "The middle value of a dataset": false,
    "The standard deviation of a dataset": false,
  }),
  QuizQuestion("What is variance in statistics?", {
    "A measure of the spread of a dataset": true,
    "A measure of the central tendency": false,
    "A measure of the correlation between variables": false,
    "A measure of the dataset size": false,
  }),
  QuizQuestion("What is standard deviation?", {
    "The square root of the variance": true,
    "The square of the variance": false,
    "The mean of the squared differences": false,
    "The range of a dataset": false,
  }),
  QuizQuestion("What is correlation?", {
    "A measure of the central tendency": false,
    "A measure of the relationship between two variables": true,
    "A measure of the spread of a dataset": false,
    "A measure of standard deviation": false,
  }),
  QuizQuestion("What is regression?", {
    "A method to model the relationship between variables": true,
    "A method to calculate the mean": false,
    "A method to find the median": false,
    "A method to compute standard deviation": false,
  }),
  QuizQuestion("What is a random variable?", {
    "A variable that is always constant": false,
    "A variable that is not random": false,
    "A variable whose possible values are outcomes of a random phenomenon":
        true,
    "A variable that describes a dataset's range": false,
  }),
  QuizQuestion("What is expected value?", {
    "The long-run average value of a random variable": true,
    "The most likely value of a random variable": false,
    "The median value of a random variable": false,
    "The sum of all values in a dataset": false,
  }),
  QuizQuestion("What is a probability mass function?", {
    "A function that gives the probability that a discrete random variable is exactly equal to some value":
        true,
    "A function that describes continuous data": false,
    "A function that gives the cumulative probability": false,
    "A function that calculates variance": false,
  }),
  QuizQuestion("What is a probability density function?", {
    "A function that describes discrete data": false,
    "A function that describes the likelihood of a continuous random variable":
        true,
    "A function that gives the cumulative probability": false,
    "A function that computes standard deviation": false,
  }),
  QuizQuestion("What is cumulative distribution function?", {
    "A function that gives the probability that a random variable is less than or equal to a certain value":
        true,
    "A function that gives the probability density": false,
    "A function that describes the mean": false,
    "A function that measures variance": false,
  }),
  QuizQuestion("What is the law of large numbers?", {
    "The theorem that describes the binomial distribution": false,
    "The theorem that describes the result of performing the same experiment a large number of times":
        true,
    "The theorem that describes the central limit theorem": false,
    "The theorem that defines a probability mass function": false,
  }),
  QuizQuestion("What is the difference between population and sample?", {
    "Population is the entire group, while sample is a subset of the population":
        true,
    "Sample is the entire group, while population is a subset of the sample":
        false,
    "Population and sample are the same": false,
    "Sample and population always have the same mean": false,
  }),
];

final List<QuizQuestion> bmmQuestions = [
  // Chomsky's Propaganda Model Questions
  QuizQuestion('What is the main idea behind Chomsky\'s Propaganda Model?', {
    "Media is neutral and objective": false,
    "Media supports only the government": false,
    "Media ignores corporate influence": false,
    "Media serves elite interests": true,
  }),
  QuizQuestion('Which of the following best describes the Propaganda Model?', {
    "A guide for making propaganda": false,
    "A theory of advertising trends": false,
    "A framework analyzing media control": true,
    "A model for government censorship": false,
  }),
  QuizQuestion('Who developed the Propaganda Model?', {
    "Marshall McLuhan": false,
    "Noam Chomsky and Edward S. Herman": true,
    "Walter Lippmann": false,
    "George Orwell": false,
  }),
  QuizQuestion('What is a key argument of the Propaganda Model?', {
    "Media operates independently from external pressures": false,
    "Media is solely controlled by journalists": false,
    "Media does not have any bias": false,
    "Media content is influenced by economic and political interests": true,
  }),
  QuizQuestion(
      'How does the Propaganda Model explain mainstream media behavior?', {
    "Media aligns with corporate and government interests": true,
    "Media seeks to promote independent thought": false,
    "Media is free from external influence": false,
    "Media is controlled by consumers alone": false,
  }),

  // Five Filters of News Selection Questions
  QuizQuestion(
      'Which of the following is NOT one of the five filters of news selection?',
      {
        "Advertising": false,
        "Ownership": false,
        "Public Opinion": true,
        "Flak": false,
      }),
  QuizQuestion(
      'What does the first filter, Ownership, imply in the Propaganda Model?', {
    "Media serves the interests of its owners": true,
    "Media is owned by independent journalists": false,
    "Ownership does not affect media content": false,
    "All media is owned by the government": false,
  }),
  QuizQuestion(
      'How does advertising function as a filter in the Propaganda Model?', {
    "It has no effect on media content": false,
    "It reduces bias in news reporting": false,
    "It influences media to favor advertisers\' interests": true,
    "It ensures neutrality in news selection": false,
  }),
  QuizQuestion('What role does Flak play in the Propaganda Model?', {
    "It encourages investigative journalism": false,
    "It has no impact on media content": false,
    "It strengthens journalistic independence": false,
    "It discourages media from challenging powerful interests": true,
  }),
  QuizQuestion(
      'What is the purpose of the Ideological filter in news selection?', {
    "It reinforces dominant political ideologies": true,
    "It ensures diversity in perspectives": false,
    "It eliminates all forms of bias": false,
    "It encourages alternative viewpoints": false,
  }),

  // Soft News and Hard News Questions
  QuizQuestion('What is the main characteristic of soft news?', {
    "It covers major political events": false,
    "It focuses on entertainment and lifestyle": true,
    "It is always investigative journalism": false,
    "It strictly reports factual information": false,
  }),
  QuizQuestion('Which of the following is an example of hard news?', {
    "A report on a government policy decision": true,
    "A feature on celebrity fashion trends": false,
    "A travel guide for tourists": false,
    "A ranking of top restaurants": false,
  }),
  QuizQuestion('How does soft news typically differ from hard news?', {
    "It provides in-depth investigative reporting": false,
    "It is more focused on human interest stories and entertainment": true,
    "It is always politically neutral": false,
    "It is limited to print media": false,
  }),
  QuizQuestion('Which type of news is more likely to be sensationalized?', {
    "Hard news": false,
    "Investigative journalism": false,
    "Editorial news": false,
    "Soft news": true,
  }),
  QuizQuestion('What is a key function of hard news?', {
    "To provide entertainment": false,
    "To focus on celebrity culture": false,
    "To inform the public about significant current events": true,
    "To promote advertising content": false,
  }),

  // Newspapers and News Media Questions
  QuizQuestion(
      'What is a primary function of newspapers in a democratic society?', {
    "To inform the public about important issues": true,
    "To entertain the audience with fiction": false,
    "To support government policies uncritically": false,
    "To promote consumer products exclusively": false,
  }),
  QuizQuestion(
      'Which of the following best describes investigative journalism?', {
    "In-depth reporting to expose corruption or wrongdoing": true,
    "Reporting only government press releases": false,
    "Focusing on entertainment news": false,
    "Writing about celebrity gossip": false,
  }),
  QuizQuestion('What is an editorial in a newspaper?', {
    "A factual news report": false,
    "A weather update": false,
    "A list of advertisements": false,
    "An opinion piece expressing the newspaper\'s stance": true,
  }),
  QuizQuestion('What is the difference between an op-ed and a news article?', {
    "An op-ed presents opinions, while a news article reports facts": true,
    "An op-ed is longer than a news article": false,
    "An op-ed is only published online": false,
    "A news article never includes interviews": false,
  }),
  QuizQuestion(
      'Which of the following is an example of a biased news report?', {
    "A factual report covering multiple perspectives": false,
    "An investigative piece revealing corruption": false,
    "A summary of a government announcement": false,
    "A report that presents only one side of an issue": true,
  }),
];

final List<QuizQuestion> moadQuestions = [
  // Tab Bar Questions
  QuizQuestion('What is the primary purpose of a TabBar in Flutter?', {
    "To display a list of items": false,
    "To switch between different views or pages": true,
    "To show notifications": false,
    "To create animations": false,
  }),
  QuizQuestion(
      'Which widget is used in combination with TabBar to display the content of each tab?',
      {
        "TabView": false,
        "TabContent": false,
        "TabBarView": true,
        "TabPage": false,
      }),
  QuizQuestion('How do you define the tabs in a TabBar?', {
    "Using the `tabs` property with a list of Tab widgets": true,
    "Using the `children` property": false,
    "Using the `items` property": false,
    "Using the `labels` property": false,
  }),
  QuizQuestion(
      'Which widget is used to create a TabBar at the bottom of the screen?', {
    "BottomNavigationBar": true,
    "BottomTabBar": false,
    "TabBar": false,
    "BottomAppBar": false,
  }),

  // Snackbar Questions
  QuizQuestion('What is the purpose of a Snackbar in Flutter?', {
    "To display a temporary message at the bottom of the screen": true,
    "To navigate between screens": false,
    "To show a dialog box": false,
    "To create a notification bar": false,
  }),
  QuizQuestion('Which method is used to display a Snackbar in Flutter?', {
    "showSnackbar()": false,
    "ScaffoldMessenger.of(context).showSnackBar()": true,
    "displaySnackbar()": false,
    "Snackbar.show()": false,
  }),
  QuizQuestion(
      'What is the default duration for which a Snackbar is displayed?', {
    "2 seconds": false,
    "4 seconds": true,
    "6 seconds": false,
    "8 seconds": false,
  }),
  QuizQuestion('How can you add an action button to a Snackbar?', {
    "Using the `action` property": true,
    "Using the `button` property": false,
    "Using the `onPressed` property": false,
    "Using the `actions` property": false,
  }),

  // Navigator Questions
  QuizQuestion('What is the purpose of the Navigator in Flutter?', {
    "To manage the app's routes and screens": true,
    "To display a list of items": false,
    "To show notifications": false,
    "To create animations": false,
  }),
  QuizQuestion('Which method is used to navigate to a new screen in Flutter?', {
    "Navigator.push()": true,
    "Navigator.pop()": false,
    "Navigator.go()": false,
    "Navigator.navigate()": false,
  }),
  QuizQuestion('How do you return to the previous screen in Flutter?', {
    "Navigator.pop()": true,
    "Navigator.push()": false,
    "Navigator.back()": false,
    "Navigator.exit()": false,
  }),
  QuizQuestion('What is the purpose of `Navigator.pushReplacement()`?', {
    "To replace the current screen with a new one": true,
    "To add a new screen on top of the current one": false,
    "To go back to the previous screen": false,
    "To close the app": false,
  }),

  // Curved Navigation Questions
  QuizQuestion('What is the purpose of CurvedNavigationBar in Flutter?', {
    "To create a bottom navigation bar with curved edges": true,
    "To display a list of items": false,
    "To show notifications": false,
    "To create animations": false,
  }),
  QuizQuestion(
      'Which package is commonly used for CurvedNavigationBar in Flutter?', {
    "curved_navigation_bar": true,
    "bottom_navigation_bar": false,
    "navigation_bar": false,
    "curved_nav": false,
  }),
  QuizQuestion('What is the main advantage of using CurvedNavigationBar?', {
    "It provides a visually appealing curved design": true,
    "It is faster than other navigation bars": false,
    "It supports more items than other navigation bars": false,
    "It is easier to implement": false,
  }),

  // Modal Bottom Sheet Questions
  QuizQuestion('What is the purpose of a ModalBottomSheet in Flutter?', {
    "To display a bottom sheet that overlays the screen": true,
    "To navigate between screens": false,
    "To show a dialog box": false,
    "To create a notification bar": false,
  }),
  QuizQuestion('Which method is used to show a ModalBottomSheet in Flutter?', {
    "showModalBottomSheet()": true,
    "showBottomSheet()": false,
    "displayBottomSheet()": false,
    "ModalBottomSheet.show()": false,
  }),
  QuizQuestion('How do you close a ModalBottomSheet programmatically?', {
    "Navigator.pop(context)": true,
    "ModalBottomSheet.close()": false,
    "Navigator.close()": false,
    "BottomSheet.close()": false,
  }),

  // Card Widget Questions
  QuizQuestion('What is the purpose of the Card widget in Flutter?', {
    "To display content in a rounded, elevated container": true,
    "To create a navigation bar": false,
    "To show notifications": false,
    "To create animations": false,
  }),
  QuizQuestion('Which property is used to add elevation to a Card widget?', {
    "elevation": true,
    "height": false,
    "width": false,
    "margin": false,
  }),
  QuizQuestion('How do you add padding inside a Card widget?', {
    "Using the `padding` property": true,
    "Using the `margin` property": false,
    "Using the `spacing` property": false,
    "Using the `inset` property": false,
  }),

  // Splash Screen Questions
  QuizQuestion('What is the purpose of a Splash Screen in Flutter?', {
    "To display a loading screen while the app initializes": true,
    "To navigate between screens": false,
    "To show notifications": false,
    "To create animations": false,
  }),
  QuizQuestion(
      'Which package is commonly used to create a Splash Screen in Flutter?', {
    "splashscreen": true,
    "flutter_splash": false,
    "splash": false,
    "loading_screen": false,
  }),
  QuizQuestion('How do you set a duration for a Splash Screen in Flutter?', {
    "Using the `duration` property": true,
    "Using the `timeout` property": false,
    "Using the `delay` property": false,
    "Using the `interval` property": false,
  }),

  // Stepper Widget Questions
  QuizQuestion('What is the purpose of the Stepper widget in Flutter?', {
    "To guide users through a sequence of steps": true,
    "To display a list of items": false,
    "To show notifications": false,
    "To create animations": false,
  }),
  QuizQuestion(
      'Which property is used to define the steps in a Stepper widget?', {
    "steps": true,
    "children": false,
    "items": false,
    "list": false,
  }),
  QuizQuestion('How do you control the current step in a Stepper widget?', {
    "Using the `currentStep` property": true,
    "Using the `stepIndex` property": false,
    "Using the `activeStep` property": false,
    "Using the `stepControl` property": false,
  }),

  // Circle Avatar Questions
  QuizQuestion('What is the purpose of the CircleAvatar widget in Flutter?', {
    "To display a circular image or icon": true,
    "To create a navigation bar": false,
    "To show notifications": false,
    "To create animations": false,
  }),
  QuizQuestion(
      'Which property is used to set the background color of a CircleAvatar?', {
    "backgroundColor": true,
    "color": false,
    "background": false,
    "fillColor": false,
  }),
  QuizQuestion('How do you add an image to a CircleAvatar?', {
    "Using the `backgroundImage` property": true,
    "Using the `image` property": false,
    "Using the `icon` property": false,
    "Using the `child` property": false,
  }),

  // Buttons Questions
  QuizQuestion('Which widget is used to create a raised button in Flutter?', {
    "ElevatedButton": true,
    "FlatButton": false,
    "RaisedButton": false,
    "TextButton": false,
  }),
  QuizQuestion('What is the purpose of the `onPressed` property in a button?', {
    "To define the action when the button is pressed": true,
    "To set the button's text": false,
    "To change the button's color": false,
    "To disable the button": false,
  }),
  QuizQuestion('Which widget is used to create a text button in Flutter?', {
    "TextButton": true,
    "ElevatedButton": false,
    "FlatButton": false,
    "OutlinedButton": false,
  }),
  QuizQuestion(
      'Which widget is used to create an outlined button in Flutter?', {
    "OutlinedButton": true,
    "TextButton": false,
    "ElevatedButton": false,
    "FlatButton": false,
  }),
  QuizQuestion('How do you disable a button in Flutter?', {
    "Set `onPressed` to null": true,
    "Set `enabled` to false": false,
    "Set `disabled` to true": false,
    "Set `active` to false": false,
  }),

  // Additional Questions
  QuizQuestion('What is the purpose of the `Scaffold` widget in Flutter?', {
    "To provide a basic structure for the app's UI": true,
    "To create animations": false,
    "To manage app state": false,
    "To handle navigation": false,
  }),
  QuizQuestion('Which widget is used to create a scrollable list in Flutter?', {
    "ListView": true,
    "Column": false,
    "Row": false,
    "Grid": false,
  }),
  QuizQuestion('What is the purpose of the `AppBar` widget in Flutter?', {
    "To display a toolbar at the top of the screen": true,
    "To create a navigation bar": false,
    "To show notifications": false,
    "To create animations": false,
  }),
  QuizQuestion('Which widget is used to create a grid layout in Flutter?', {
    "GridView": true,
    "ListView": false,
    "Column": false,
    "Row": false,
  }),
  QuizQuestion('What is the purpose of the `Flexible` widget in Flutter?', {
    "To allow a widget to flexibly occupy available space": true,
    "To create animations": false,
    "To manage app state": false,
    "To handle navigation": false,
  }),
];

//baf questions and words

final List<String> bafWords = [
  // Shareholder-related terms
  "Shares", "Stocks", "Investor", "Dividends", "Equity", "Voting", "Company",
  "Ownership",
  "Board", "Public", "Private", "Trade", "Return", "Investment", "Capital",
  "Risk", "Growth",

  // Liquidity-related terms
  "Cash", "Assets", "Bank", "Flow", "Balance", "Debt", "Loan", "Reserve",
  "Savings",
  "Short-term", "Quick", "Funds", "Exchange",

  // Stock market terms
  "Stockholder", "IPO", "Broker", "Portfolio", "Bull", "Bear", "Index",
  "Returns",

  // Trade-related terms
  "Goods", "Services", "Business", "Import", "Export", "Deal", "Barter",
  "Currency",
  "Supply", "Demand", "Commerce", "Revenue"
];

final List<String> bmsWords = [
  // Industries
  "Healthcare",
  "Education",
  "Banking",
  "Hospitality",
  "Tourism",
  "Retail",
  "Telecommunications",
  "Transportation",
  "E-commerce",
  "IT Services",
  "Consulting",
  "Customer Support",
  "Insurance",
  "Real Estate",
  "Entertainment",
  "Restaurants",
  "Logistics",
  "Event Management",
  "Legal Services",
  "Financial Services",
  "Security Services",
  "Wellness & Fitness",
  "Media & Advertising",
  "Public Administration",
  "Personal Care",
  "Repair & Maintenance",

  // Marketing
  "Branding",
  "Advertisement",
  "Promotion",
  "Target Audience",
  "SEO (Search Engine Optimization)",
  "Social Media",
  "Content Marketing",
  "Influencer",
  "Campaign",
  "Public Relations (PR)",
  "Customer Engagement",
  "Market Research",
  "Lead Generation",
  "Email Marketing",
  "Sales Funnel",
  "Digital Marketing",
  "Traditional Marketing",
  "Pricing Strategy",
  "Product Placement",
  "Billboard",
  "Call to Action (CTA)",
  "Conversion Rate",
  "Consumer Behavior",
  "Word of Mouth",
  "Brand Loyalty",
  "Marketing Strategy"
];

final List<String> dmWords = [
  // Probability
  "Event",
  "Outcome",
  "Experiment",
  "Sample Space",
  "Random",
  "Independent",
  "Dependent",
  "Mutually Exclusive",
  "Complement",
  "Union",
  "Intersection",
  "Conditional Probability",
  "Bayes' Theorem",
  "Expected Value",
  "Variance",
  "Standard Deviation",
  "Binomial Distribution",
  "Poisson Distribution",
  "Normal Distribution",
  "Dice",
  "Card Deck",
  "Heads or Tails",
  "Frequency",
  "Likelihood",
  "Odds",

  // Set Theory
  "Set",
  "Subset",
  "Superset",
  "Difference",
  "Empty Set",
  "Universal Set",
  "Power Set",
  "Cardinality",
  "Finite",
  "Infinite",
  "Venn Diagram",
  "Element",
  "Member",
  "Disjoint",
  "Equal Sets",
  "Proper Subset",
  "Ordered Pair",
  "Cartesian Product",
  "Function",
  "Relation",
  "Domain",
  "Range",
  "Binary Relation",

  // Permutation & Combination
  "Permutation",
  "Order",
  "Factorial",
  "Arrangement",
  "Combination",
  "Distinct",
  "Repetition",
  "Circular",
  "Lexicographic Order",
  "Swap",
  "Ranking",
  "Derangement",
  "Anagram",
  "Counting",
  "Shuffle",
  "Sequence",
  "Numbering",
  "Position",
  "Placement",
  "Choices",
  "Formula",
  "Calculation",
  "Distribution",
  "Possible Ways",
  "Probability",

  // Discrete Mathematics
  "Graph",
  "Vertex",
  "Edge",
  "Degree",
  "Path",
  "Cycle",
  "Matrix",
  "Proposition",
  "Logical Connective",
  "Truth Table",
  "Predicate",
  "Quantifier",
  "Recursion",
  "Induction",
  "Algorithm",
  "Binary Number",
  "Combinatorics"
];

final List<String> dsWords = [
  // Java
  "Array",
  "List",
  "Stack",
  "Queue",
  "LinkedList",
  "Tree",
  "Graph",
  "Heap",
  "Node",
  "Pointer",
  "Binary Tree",
  "Sorting",
  "Searching",
  "Table",
  "Record",
  "Index",
  "Traversal",
  "Algorithm",
  "Bubble Sort",
  "Merge Sort",
  "Quick Sort",
  "Insertion Sort",
  "Selection Sort",
  "Data Structure",
  "Memory",

  // Sorting Algorithms
  "Heap Sort",
  "Radix Sort",
  "Counting Sort",
  "Shell Sort",
  "Bucket Sort",
  "Swap",
  "Compare",
  "Partition",
  "Pivot",
  "Divide",
  "Conquer",
  "Stable Sort",
  "Unstable Sort",
  "Ascending",
  "Descending",
  "Efficiency",
  "Time Complexity",
  "Space Complexity",

  // Tree
  "Root",
  "Leaf",
  "Branch",
  "Parent",
  "Child",
  "Sibling",
  "Height",
  "Depth",
  "Preorder",
  "Inorder",
  "Postorder",
  "Balanced",
  "Full",
  "Complete",
  "Min Heap",
  "Max Heap",
  "Insert",
  "Delete",
  "Sort",
  "Linked",

  // Recursion
  "Function",
  "Call",
  "Return",
  "Base Case",
  "Recursive Case",
  "Memory Overflow",
  "Factorial",
  "Fibonacci",
  "Loop",
  "Iteration",
  "Code",
  "Steps",
  "Solution",
  "Problem",
  "Implementation"
];

final List<String> bmmWords = [
  // Media
  "Chomsky",
  "Propaganda",
  "Media Bias",
  "News Filter",
  "Ownership",
  "Advertising",
  "Sourcing",
  "Flak",
  "Anti-Communism",
  "News Selection",
  "Agenda Setting",
  "Gatekeeping",
  "Hard News",
  "Soft News",
  "Editorial",
  "Sensationalism",
  "Newspaper",
  "Broadcasting",
  "Press Freedom",
  "Fake News",
  "Censorship",
  "Public Relations",
  "Newsroom",
  "Investigative Journalism",
  "Headlines",
  "Breaking News",

  // Journalism
  "Reporter",
  "Editor",
  "Byline",
  "Headline",
  "Lead Paragraph",
  "Ethics",
  "Fact-checking",
  "Sources",
  "Exclusive",
  "Anonymous Source",
  "Press Conference",
  "Media Outlet",
  "Objectivity",
  "Interview",
  "Press Release",
  "Op-Ed",
  "Infotainment",
  "News Cycle",
  "Tabloid",
  "Freedom of the Press",

  // Newspaper
  "Broadsheet",
  "Print Media",
  "Digital News",
  "Subscription",
  "Paywall",
  "Press Agency",
  "Editorial Board",
  "Classifieds",
  "Opinion Section",
  "Feature Story",
  "Cartoon Strip",
  "Press Ethics",
  "Journalist",
  "Magazine",
  "Columnist",
  "Front Page",
  "Circulation",
  "Public Interest",
  "Masthead",
  "Newsprint",
  "Publishing",

  // Ethics
  "Truth",
  "Accuracy",
  "Impartiality",
  "Fairness",
  "Transparency",
  "Accountability",
  "Journalistic Integrity",
  "Misinformation",
  "Disinformation",
  "Privacy",
  "Source Protection",
  "Defamation",
  "Conflict of Interest",
  "Plagiarism",
  "Editorial Independence",
  "Code of Conduct"
];

final List<String> moadWords = [
  // Mobile App
  "Android",
  "iOS",
  "App Store",
  "Google Play",
  "User Interface",
  "User Experience",
  "Navigation",
  "Widgets",
  "Push Notification",
  "API",
  "Database",
  "Backend",
  "Frontend",
  "Cloud Storage",
  "Firebase",
  "Java",
  "Kotlin",
  "Swift",
  "Flutter",
  "React Native",
  "Permissions",
  "Framework",
  "Bug Fixing",
  "Testing",
  "Deployment",
  "Monetization",

  // Widgets
  "Widget",
  "Button",
  "Text Field",
  "Image View",
  "Progress Bar",
  "Checkbox",
  "Radio Button",
  "Switch",
  "Slider",
  "Dropdown",
  "ListView",
  "GridView",
  "CardView",
  "ScrollView",
  "Snackbar",
  "Toast",
  "Floating Action Button",
  "TabBar",
  "Navigation Drawer",
  "AppBar",
  "Search Bar",
  "Toolbar",
  "Stepper",
  "Dialog Box",
  "Menu",
  "RecyclerView",

  // Navigation
  "Drawer",
  "Sidebar",
  "Tab Bar",
  "Bottom Navigation",
  "Breadcrumbs",
  "Back Button",
  "Forward Button",
  "Gesture Control",
  "Swipe",
  "Scroll",
  "Deep Linking",
  "Intent",
  "Activity",
  "Fragment",
  "ViewPager",
  "Transition",
  "Animation",
  "Route",
  "DrawerLayout"
];
