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





