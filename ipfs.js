const IPFS = require('ipfs-api')

const ipfs = new IPFS({ host: 'ipfs.infura.io', port: 5001, protocol: 'https' })

obj = {
    'RG' : 19210093, 
    'CPF' : 1234675432,
    'CNH' : 1234500,
    'GENERO' : 'helicóptero',
    'EST_CIVIL' : 0,
    'NACION' : 55,
}

var buf = Buffer.from(JSON.stringify(obj))
ipfs.add(buf, (err, ipfsHash) => {
  console.log(ipfsHash, "https://cloudflare-ipfs.com/ipfs/" + ipfsHash[0].hash)
})
