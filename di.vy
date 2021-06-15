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
    self.database[adrs] = Document({
        clerk: self.clerk,
        name: nam,
        Date_of_Birth: dob,
        mother_ID: mID,
        father_ID: fID,
        IPFS: ipfsID
    })


#Consulta Infos Ether

import Ethereum as ETH


@external
@view
def nome_eth():
    return concat ("Name: ", database[msg.sender].name)
    
@external
@view
def birth_eth():
    return concat ("Birthday: ", database[msg.sender].Date_of_Birth)

@external
@view
def mom_id_eth():
    return concat ("Mom ID: ", database[msg.sender].mother_ID)

@external
@view
def dad_id_eth():
    return concat ("Dad ID: ", database[msg.sender].father_ID)

@external
@view
def address_eth():
    return concat ("IPFS Adress: ", database[msg.sender].IPFS)


