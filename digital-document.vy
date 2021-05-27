# Digital ID

clerk: address

struct Document:
    owner: address
    name: bytes32
    Gender: uint256  
    CitizenID: uint256
    Mother: address
    Father: address
    BirthDate: bytes32
    ExpDate: uint256

people: public(HashMap[address, Document])

@external
def __init__(clerk: address):
    self.clerk = clerk

@view
@external
def getInfo() -> uint256:
    return 0

@external
def registerPerson():
    pass

def teste():
    pass