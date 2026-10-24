#Requirements and Conceptual Model
Moses Jura, Amaiyah Young

## Requirements
- End users: Lana (owner/operator) and any hired dog walkers
- Must track: dogs, dog owners, walkers (staff), scheduled walks, and payments
- Lana needs to know: which walker walked which dog, when, for how long
- Must track owner contact info for billing and scheduling

- ## Entities
- Owner (the human customer)
- Dog (the pet being walked)
- Walker (the staff member)
- Walk (a scheduled/completed walk)
- Payment (billing record)

- ## Attributes
- Owner: OwnerID (PK), FirstName, LastName, Phone, Email, Address
- Dog: DogID (PK), Name, Breed, Age, OwnerID (FK)
- Walker: WalkerID (PK), FirstName, LastName, Phone, Email
- Walk: WalkID (PK), WalkDate, StartTime, DurationMinutes, DogID (FK), WalkerID (FK)
- Payment: PaymentID (PK), Amount, PaymentDate, OwnerID (FK)

## Relationships
- One Owner has many Dogs (1:N) — one dog belongs to one owner
- One Dog can have many Walks; one Walker can do many Walks (M:N between Dogs and Walkers via Walk)
- One Owner has many Payments (1:N)

- ## M:N Resolving Tables
- Dogs ↔ Walkers is MANY-TO-MANY:
  One dog is walked by many walkers, one walker walks many dogs.
  → Resolved by the **Walk** table (it holds DogID + WalkerID + date info).
  Walk effectively acts as an associative table with extra multi-dependency columns.


Group Comparison Notes: ERD Review
a) Similarities: What turned out the same?
Looking at both diagrams, our group is clearly on the same page for the core structure of Lana’s business:

The Core Entities: Both diagrams identified the same four main "nouns" (entities): Owner, Dog, Walker, and Walk.

Resolving the Many-to-Many Relationship: Both correctly recognized that a Dog can be walked by many Walkers, and a Walker walks many Dogs. We both solved this by using Walk as the "bridge" (resolving table) in the middle.

Primary Keys: Both designs use surrogate, auto-incrementing integer IDs for the primary keys (e.g., OwnerID, DogID) rather than relying on names, which is a best practice.

Foreign Keys: Both correctly placed DogID and WalkerID inside the Walk table to link them together.

b) Differences: Where did we differ? (Pros & Cons)
While the core is the same, we made different choices on how to handle payments, naming, and specific data points. Here is the breakdown:

Difference 1: How Payments are tracked (The biggest difference!)
Diagram 1: Links Payment directly to the Owner (OwnerID is the foreign key).

Diagram 2: Links Payment directly to the Walk (WalkID is the foreign key). It also adds PaymentType, PaymentStatus, and moves Amount and PaymentDate here.

Why the difference? This comes down to Lana's business model.

Pros of Diagram 1 (Owner-based): Great if Lana charges a monthly flat fee, or if an owner pays for a package of 10 walks in advance. It's simpler and requires fewer tables/links.

Pros of Diagram 2 (Walk-based): Great if Lana charges per walk. It allows her to track exactly which specific walk has been paid for and which ones are still unpaid (via PaymentStatus).

Cons: Diagram 1 makes it hard to know exactly which walks were paid for. Diagram 2 creates a lot more payment records (one per walk instead of one per month).

Difference 2: Naming Conventions
Diagram 1: Uses separate columns for FirstName and LastName. Uses Age for the dog.

Diagram 2: Uses a single combined column like OwnerName, WalkerName, and DogName.

Why the difference? Diagram 1 is stricter about database normalization (1NF).

Pros of Diagram 1: It is much easier to sort alphabetically by Last Name, or to search for a specific first name.

Pros of Diagram 2: It is faster to type and takes up less space on the screen.

Cons of Diagram 2: If Lana wants to send a "Dear [FirstName]" email, it's harder to separate the name.

Difference 3: Dog Details
Diagram 1: Uses Age (integer).

Diagram 2: Removes Age entirely, but adds Status (likely to track if a dog is active/inactive, or maybe the status of the walk).

Why the difference?

Cons of using Age (Diagram 1): A dog's age changes every year (or month). If you store "3", you have to manually update it to "4" on their birthday. (Storing BirthDate is usually better so the computer can calculate the age).

Pros of Diagram 2: Adding Status to the Walk table is very useful for Lana to know if a walk is "Scheduled", "Completed", or "Cancelled".

Difference 4: Walk Date and Time
Diagram 1: Uses WalkDate (date).

Diagram 2: Uses WalkDateTime (datetime).

Why the difference? Diagram 2 is more professional. Dog walkers need to know exactly when the walk happens (e.g., "Today at 2:30 PM"), not just the day. Using a datetime data type captures both the date and the time.

Conclusion / Our Group's Consensus:
After reviewing both, we realized that Diagram 2's approach to WalkDateTime and Status is better for a real business. However, Diagram 1's approach to splitting FirstName and LastName is better for data accuracy.

For payments, our group decided that if Lana charges per walk, Diagram 2's link from Payment to Walk makes the most sense!




