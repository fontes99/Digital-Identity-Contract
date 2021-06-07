#Consulta Infos Ether

import Ethereum as ETH


@external
@view
def nome_eth():
    return concat ("Name: ", ETH(msg.sender).name())
    
@external
@view
def birth_eth():
    return concat ("Birthday: ", ETH(msg.sender).BirthDate())

@external
@view
def mom_id_eth():
    return concat ("Mom ID: ", ETH(msg.sender).mom_id())

@external
@view
def dad_id_eth():
    return concat ("Dad ID: ", ETH(msg.sender).dad_id())

@external
@view
def address_eth():
    return concat ("IPFS Adress: ", ETH(msg.sender).address())



# Consulta Infos IPFS

import IPFS as IPFS


@external
@view
def rg_ipfs():
    return concat ("RG: ", IPFS(msg.sender).rg())

def cpf_ipfs():
    return concat ("CPF: ", IPFS(msg.sender).cpf())

def cnh_ipfs():
    return concat ("CNH: ", IPFS(msg.sender).cnh())

def gender_ipfs():
    return concat ("Gender: ", IPFS(msg.sender).gender())

def civil_est_ipfs():
    return concat ("Estado Civil: ", IPFS(msg.sender).ec())

def nation_ipfs():
    return concat ("Nacionalidade: ", IPFS(msg.sender).nation())

