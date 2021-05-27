# Digital ID

clerk: address

struct Document_ETH:
    owner: address
    name: bytes32
    BirthDate: bytes32
    Mother: address
    Father: address

struct Document_IPFS:
    CitizenID: uint256
    drivers_license: uint256
    CPF: uint256
    marital_status: uint256
    nationality: uint256  


people: public(HashMap[address, Document_ETH])

@external
def __init__(clerk: address):
    self.clerk = clerk

@view
@external
def getInfo() -> uint256:
    return 0

@external
def registerPerson():