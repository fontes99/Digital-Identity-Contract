#Consulta Infos Ether

@external
@view
def nome_eth():
    return concat ("Name: ", msg.sender.name)
    
@external
@view
def birth_eth():
    return concat ("Birthday: ", msg.sender.BirthDate)

@external
@view
def mom_id_eth():
    return concat ("Mom ID: ", msg.sender.mom_id)

@external
@view
def dad_id_eth():
    return concat ("Dad ID: ", msg.sender.dad_id)

@external
@view
def address_eth():
    return concat ("Residential Adress: ", msg.sender.address)