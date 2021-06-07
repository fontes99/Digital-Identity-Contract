#Consulta Infos Ether

@external
@view
def nome_eth():
    return msg.sender.name
    
@external
@view
def birth_eth():
    return msg.sender.BirthDate

@external
@view
def mom_id_eth():
    return msg.sender.mom_id

@external
@view
def dad_id_eth():
    return msg.sender.dad_id

@external
@view
def address_eth():
    return msg.sender.address