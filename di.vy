'''
- registerPerson = fazer um register em cima de um hashMap
- registerInsfos = recebe um linw? de um arquivo de txt com informações

'''

clerk: address

struct Document:
    clerk: address
    name: String[100]
    Date_of_Birth: uint256
    mother_ID: address
    father_ID: address
    IPFS: String[100]

database: public(HashMap[address, Document])

@external
def __init__(clerk: address):
    self.clerk = clerk

@external
def registerPerson(adrs:address, nam:String[100], dob:uint256, mID:address, fID:address, ipfsID:String[100]):
    
    assert msg.sender == self.clerk
    
    self.database[adrs] = Document({
        clerk: self.clerk,
        name: nam,
        Date_of_Birth: dob,
        mother_ID: mID,
        father_ID: fID,
        IPFS: ipfsID
    })

@external
def updateName(adrs:address, newName:String[100]):

    assert msg.sender == self.clerk

    self.database[adrs].name = newName

@external
def updateIPFSid(adrs:address, ipfsID:String[100]):

    assert msg.sender == self.clerk

    self.database[adrs].IPFS = ipfsID

@view
@external
def getClearkAdress(name: address) -> address:
    return self.database[name].clerk
    

@view
@external
def getPersonName(name: address) -> String[100]:
    return self.database[name].name
    
@view
@external
def getPersonMotherAddress(name: address) -> address:
    return self.database[name].mother_ID


@view
@external
def getPersonFatherAddress(name: address) -> address:
    return self.database[name].father_ID
    
    

