
class Db_model (object):
    #parent class for all database entries in the project
    def create ():
        '''
        18/02/2024
        Gregory Margulis
        input: params for new database object (user / customer / airline / admin / flight / ticket)
        action: creates an instanse of the corresponding object and saves the entry in the database
        '''
        pass
    def get ():
        '''
        18/02/2024
        Gregory Margulis
        input: id of a database object
        output: returns all object information from database
        '''
        pass
    def update ():
        '''
        18/02/2024
        Gregory Margulis
        input: id of a database object, field to update, new value 
        action: updates the entry in the database
        '''
        pass
    def remove ():
        '''
        18/02/2024
        Gregory Margulis
        input: id of a database object 
        action: removes the entry (changes Is_Active to False)
        '''
        pass
    

class Flight (Db_model):
    '''
    def __init__(self, Airline_Company_Id, Origin_Country_Id, Destination_Country_Id, Departure_Time, Landing_Time, Remaining_Tickets, Is_Active)
       
    '''
    

class AirlineCompany (Db_model):

class Customer (Db_model):

class Administrator (Db_model):

class User (Db_model):

class Country (Db_model):

class Ticket (Db_model):




   






