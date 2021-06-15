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
    IPFS: address

database: public(HashMap[address, Document])

@external
def __init__(clerk: address):
    self.clerk = clerk

@external
def registerPerson(adrs:address, nam:String[100], dob:uint256, mID:address, fID:address, ipfsID:address):
    self.database[adrs] = Document({
        clerk: self.clerk,
        name: nam,
        Date_of_Birth: dob,
        mother_ID: mID,
        father_ID: fID,
        IPFS: ipfsID
    })

    