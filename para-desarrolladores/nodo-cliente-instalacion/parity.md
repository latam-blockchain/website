---
description: Cliente de Resil con OpenEthereum v3.3.0
---

# OpenEthereum \(antiguo Parity\)

## Instalacion manual en sistemas operativos basados en Debian 

```bash
sudo apt-get update && sudo apt-get install -y curl unzip wget screen
mkdir openethereum && cd openethereum
wget https://github.com/openethereum/openethereum/releases/download/v3.3.0-rc.8/openethereum-linux-v3.3.0-rc.8.zip
unzip openethereum-linux-v3.3.0-rc.8.zip
chmod +x openethereum
```

### Descarga el archivo de especificaciones de la red

- Resil Mainnet
`_WIP_`

- Resil Testnet3

`wget https://raw.githubusercontent.com/latam-blockchain/resil-chain-spec/testnet/chain.json`

### Crea un `screen` tipo demonio donde ejecutar el cliente

```bash
screen -dmS resil
screen -r resil
```

### Ejecuta el cliente

```
./openethereum --chain chain.json --jsonrpc-port=8545 --jsonrpc-cors=all --jsonrpc-interface=all --jsonrpc-hosts=all \ 
                --jsonrpc-apis=web3,eth,net,parity --ws-interface=all --ws-apis=web3,eth,net,parity,pubsub --ws-origins=all \ 
                --ws-hosts=all --ws-max-connections=10 --max-peers=100
```

## Instalacion con docker

### WIP
