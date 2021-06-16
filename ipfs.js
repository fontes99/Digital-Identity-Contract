const IPFS = require('ipfs-api')

const ipfs = new IPFS({ host: 'ipfs.infura.io', port: 5001, protocol: 'https' })

obj = {
    'CARTERINHA DO PALMEIRAS' : 666 
}

arrayDados = [] 

hashDocs = "QmUhk5rTbt6f7DMNy7yF9zPUSdRMiPA68VPLxpM48gT86W"

var buf = Buffer.from(JSON.stringify(obj))


const fetch = require('node-fetch');

let url = "https://cloudflare-ipfs.com/ipfs/" + hashDocs;

let settings = { method: "Get" };

fetch(url, settings)
.then(res => res.json())
.then((json) => {
    ipfs.add(buf, (err, ipfsHash) => {
        
        console.log(json)

        jsonArray = json['json']
        
        jsonArray.push("https://cloudflare-ipfs.com/ipfs/" + ipfsHash[0].hash)
        
        json['json'] = jsonArray
        
        json['lastblock'] = hashDocs
        
        var buff = Buffer.from(JSON.stringify(json))

        ipfs.add(buff, (err, ipfsHashh) => {
            // json.push("https://cloudflare-ipfs.com/ipfs/" + ipfsHashh[0].hash)
        
        console.log(ipfsHashh, "https://cloudflare-ipfs.com/ipfs/" + ipfsHashh[0].hash)
        })
    })
});
