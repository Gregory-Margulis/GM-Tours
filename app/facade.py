

class LoginToken (object):
    def __init__(self, id, name, role):
        self.id = id, self.name = name, self.role = role

class  FacadeBase(object):


    def get_all_flights():
        '''
        18/02/2024
        Gregory Margulis
        input: 
        output: returns all active flights
        '''
        pass

    def get_flight_by_id(id):
        '''
        18/02/2024
        Gregory Margulis
        input: flight id
        output: returns all flight details 
        '''
        pass
    
    def get_flights_by_parameters(origin_country_id, destination_country_id, date):
        '''
        18/02/2024
        Gregory Margulis
        input: parameters for flight search
        output: returns all flights that match the input params
        '''
        pass    
        

    def get_all_airlines():
        '''
        18/02/2024
        Gregory Margulis
        input: 
        output: returns all active airlines 
        '''
        pass  

    def get_airline_by_id(id):
        '''
        18/02/2024
        Gregory Margulis
        input: airline id
        output: returns all airline details 
        '''
        pass   

    def get_airline_by_parameters( … ):
         '''
        18/02/2024
        Gregory Margulis
        input: parameters for airline search
        output: returns all airlines that match the input params
        '''
        pass   

    def get_all_countries():
         '''
        18/02/2024
        Gregory Margulis
        input: 
        output: returns all countries id and names
        '''
        pass 

    def get_country_by_id(id):
         '''
        18/02/2024
        Gregory Margulis
        input: country id
        output: all country details
        '''
        pass 
        
    def create_new_user ( user ):
        '''
        18/02/2024
        Gregory Margulis
        input: parameters for new user
        action: creates a user with the input params
        '''
        pass 


class  AnonymousFacade (FacadeBase):
    def login (username, password):
        '''
        18/02/2024
        Gregory Margulis
        input: username, password
        action: creates a login token and redirects the user to the corresponding page
        '''  
        pass
    '
    def add_customer ( params ):
         '''
        18/02/2024
        Gregory Margulis
        input: customer parameters
        action: creates a user with the provided parameters
        ''' 
        pass

class CustomerFacade (FacadeBase):
    '''
    update_customer (customer)
    add_ticket (ticket)
    remove_ticket (ticket)
    get_my_tickets ()
    '''


class AirlineFacade (FacadeBase):
    '''
    get_my_flights ()
	update_airline (airline)
-	add_flight (flight)
-	update_flight (flight)
-	remove_flight (flight)

    '''

class AdministratorFacade (FacadeBase):

    '''
    get_all_customers()
-	add_airline (...)
	add_customer (...)
-	add_administrator (...)
-	remove_airline (airline)
-	remove_customer (customer)
-	remove_administrator (administrator)

    '''


