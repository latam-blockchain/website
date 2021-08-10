---
description: Hoja de ruta para el 2021-2022
---

# Hoja de Ruta

{% hint style="info" %}
Todo el desarrollo aquí descrito se encuentra en etapa de investigación & desarrollo y es un trabajo en progreso.
{% endhint %}

## Repositorio Publico

🎯 **Meta**: Q2 2021 ✅ **Completado**

Repositorio publico de la organización para desarrollo descentralizado y manual de integración en castellano e ingles.

{% embed url="https://github.com/latam-blockchain" caption="" %}

## Red de prueba Resil Testnet

🎯 **Meta:** Q2 2021 ✅ **Completado**

Resil Testnet Jul 18, 2021 Bloque \#32.600.

* Para mantener la compatibilidad con la red de Ethereum están implementados los siguientes EIPs: 140 211 214 658 145 1014 1052 1283 1344 1706 1884 2028 2929 2930

* Precio del Gas _"impuesto transaccional"_  10 Gwei ~ 0.0002 USD por transacciones regulares

* Velocidad transaccional ~ 5 segundos 

* Tamaño del Bloque 8.000.000 

* Latam-Blockchain Resil soporta los clientes OpenEthereum\(antiguo Parity\) y Nethermind

{% hint style="info" %}
_WIP_ agregar aquí link al repositorio chain_specs
{% endhint %}

## Explorador de Bloques

🎯 **Meta:** Q3 2021 ✅ **Completado**

Explorador de bloques, APIs de servicio y herramientas de análisis para la red Resil Testnet.

{% hint style="info" %}
_WIP_ traduciendo al castellano
{% endhint %}

{% embed url="https://explorer.latam-blockchain.com/" caption="" %}

## Faucet

🎯 **Meta:** Q3 2021 ✅ **Completado**

Plataforma para distribuir monedas gratuitas para poder interactuar \(como usuario o como desarrollador\) en la red de prueba Resil.

{% embed url="https://faucet.latam-blockchain.com" caption="" %}

## **Migración al cliente Nethermind**

🎯 **Meta:** Q3 2021 ☑ **En progreso**

Todos los validadores en la red deben usar el cliente Nethermind en remplazo de OpenEthereum en referencia a:

{% embed url="https://medium.com/openethereum/gnosis-joins-erigon-formerly-turbo-geth-to-release-next-gen-ethereum-client-c6708dd06dd" caption="" %}

## **Destinatario de recompensa de bloque dinámico**

🎯 **Meta:** Q3 2021 ☑ **En progreso**

Implementación de los contratos _ValidatorsSet_ y _Blockreward_ en función de permitir la maleabilidad de la recompensa de bloque a los destinatarios según la titularidad de tokens no fungibles en una red externa "Ethereum"

## **TokenBridge / AMB \(puente inter-cadena usdt a token nativo\)**

🎯 **Meta:** Q4 2021

Puente erc20\(Ethereum Rinkeby Testnet\) a un _token nativo_ de Resil Testnet, usando el método de minado del token nativo sin interactuar con el contrato de _BlockReward_

## **Red Principal Resil Mainnet**

🎯 **Meta:** Q1 2022

