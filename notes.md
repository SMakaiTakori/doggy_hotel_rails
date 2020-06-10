Doggy Hotel App migrations set up 

Dog/User profile 

has_many :reservations
has_many :hotels, through: :reservations

Form to create doggy profile 
CRUD actions
attributes -> :name, :age, :breed, :biography                   

Join Table- Reservations 

belongs_to :dog
belongs_to :hotel                                            

attributes -> :date,  :time
Form for reservations
CRUD actions

Hotel

has_many :reservations
has_many :dogs, through: :reservations

Seed some hotels for users to select when they make a reservation to simulate airbnb experience