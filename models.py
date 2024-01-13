from sqlalchemy import Column, INT, BIGINT, VARCHAR, TEXT, DATETIME, create_engine
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Country (Base):
    __table_name__ = 'Countries'
    Id = Column (VARCHAR(5), primary_key=True)
    Name = Column (TEXT, nullable=False, unique=True)

class User_Role (Base):
    __table_name__ = 'User_Roles'
    Id = Column (INT, primary_key=True, autoincrement=True)
    Role_Name = Column (TEXT, nullable=False, unique=True)

class User (Base):
    __table_name__ = 'Users'
    Id = Column (BIGINT, primary_key = True, autoincrement = True)
    Username = Column (TEXT, nullable=False, unique=True)
    Password = Column (TEXT, nullable=False)
    Email = Column (TEXT, nullable=False, unique=True)
    User_Role = Column(INT,  ForeignKey = ['User_Roles.Id'], nullable=False) 

class Customer (Base):
    __table_name__ = 'Customers'
    Id = Column (BIGINT, primary_key=True, autoincrement=True)
    First_Name = Column (TEXT, nullable=False)
    Last_Name = Column (TEXT, nullable=False)
    Address = Column (TEXT)
    Phone_No = Column (TEXT, nullable=False, unique=True)
    Credit_Card_No = Column (TEXT, nullable=False, unique=True)
    User_Id = Column (BIGINT, ForeignKey = ['Users.Id'], nullable=False, unique=True)


class Airline_Company (Base):
    __table_name__ = 'Airline_Companies'
    Id = Column (BIGINT, primary_key=True, autoincrement=True)
    Name = Column (TEXT, nullable=False, unique=True)
    Country_Id = Column (VARCHAR(5), ForeignKey = ['Countries.Id'])
    User_Id = Column (BIGINT, ForeignKey = ['Users.Id'], nullable=False, unique=True)





   






