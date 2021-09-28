---
description: Setup your custom RPC to connect to Metamask
---

# Metamask setup

## Setting up MetaMask for Latam-blockchain

{% hint style="info" %}
See instructions below for manual entry.

Quick Methods

1. [Chainlist](https://chainlist.org/). Search for Latam-Blockchain and click add, you may still need to add [https://explorer.latam-blockchain.com](https://explorer.latam-blockchain.com) as the Block Explorer.
2. [Faucet](https://app.sushi.com/swap). With MetaMask enabled on Ethereum visit the faucet and click on _Conectar Monedero_ and approve the metamask requests, Metamask will ask for approval to add the Latam-Blockchain chain.
{% endhint %}

## Manual Instructions

1\) Open Metamask, and select "Custom RPC" from the Network Dropdown.

![](https://github.com/latam-blockchain/website/tree/cfe5a1b5c5310c6d8e0379d2f4d7ed509ffd738a/.gitbook/assets/custom-rpc.png)

2\) In the "Custom RPC" Settings, add in the xDai network details and click **Save**:

* Network Name: **Latam-Blockchain**
* New RPC URL: [**https://rpc.xdaichain.com/**](https://rpc.xdaichain.com/)
* Chain ID: **0x64**
* Symbol: **xDai**
* Block Explorer URL: [**https://blockscout.com/xdai/mainnet**](https://blockscout.com/xdai/mainnet/)

{% hint style="info" %}
Note: Chain ID 0x64 is the hexadecimal equivalent of 100, which is the xDai chain ID. MetaMask recently updated the ChainID to be a required field. When you update, you may need to reenter the Chain ID: 100, and it will be converted to a hexadecimal: 0x64**.**

**If you are having issues, try entering 100 for Chain ID and resaving the configuration.**
{% endhint %}

{% hint style="info" %}
If you'd prefer not to make these changes, [**Nifty Wallet** ](https://chrome.google.com/webstore/detail/nifty-wallet/jbdaocneiiinmjbjlgalhcelgbejmnid)provides a built-in xDai RPC.
{% endhint %}

{% hint style="success" %}
Once you add the xDai network, you will need xDai to pay for transactions. See [Getting xDai](https://github.com/latam-blockchain/website/tree/cfe5a1b5c5310c6d8e0379d2f4d7ed509ffd738a/for-users/get-xdai-tokens/README.md) for more information.
{% endhint %}

## Adding Custom Tokens

When bridging tokens from Ethereum, BSC or elsewhere you may need to add the custom token to MetaMask to view it. **The address on xDai will be different from the address on Ethereum or BSC.**

The easiest way is to click on the fox icon in BlockScout or OmniBridge for the token you are adding, then complete the process through the MetaMask popup.

![](https://github.com/latam-blockchain/website/tree/cfe5a1b5c5310c6d8e0379d2f4d7ed509ffd738a/.gitbook/assets/foxes%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29.png)

If you want to add manually in MetaMask, go to **Assets** -&gt; **Add Token**, Paste in the address \(symbol and decimals should populate if you are connected to xDai\) and save.

## Connecting to a Hardware Wallet

Instructions for using MetaMask with a Ledger or Trezor: [https://metamask.zendesk.com/hc/en-us/articles/360020394612-How-to-connect-a-Trezor-or-Ledger-Hardware-Wallet](https://metamask.zendesk.com/hc/en-us/articles/360020394612-How-to-connect-a-Trezor-or-Ledger-Hardware-Wallet)

## Troubleshooting Issues

This [troubleshooting guide from 1Hive](https://forum.1hive.org/t/troubleshooting-problems-on-metamask/215) is helpful if you are experiencing issues with MetaMask and xDai.

