

class LoginToken (object):
    '''
    22/02/2024
    Gregory Margulis
    login token is assigned to a user on signing in to the application, and is used to manage authorization.
    '''
    def __init__(self, id, name, role):
        self.id = id
        self.name = name
        self.role = role

    