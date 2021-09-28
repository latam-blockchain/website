# On-Chain Random Numbers

Latam-Blockchain features an on-chain RNG based on RANDAO. It may be leveraged by smart contract developers to introduce random numbers into their applications. _Note that random numbers are limited to certain blocks in the current implementation. See below for more information._

* [PRNG implementation explainer](randomaura-rng-explainer.md)
* [How to access the random seed in a smart contract](accessing-a-random-seed-with-a-smart-contract.md)
* [Randomness FAQs](randomness-faqs.md)

{% hint style="success" %}
The following article by POA team explains on-chain randomness functions and how it is used. It includes concepts and an example, and is a good place to start.

[https://forum.poa.network/t/reliable-randomness-bringing-on-chain-entropy-to-the-xdai-stable-chain/3015](https://forum.poa.network/t/reliable-randomness-bringing-on-chain-entropy-to-the-xdai-stable-chain/3015)
{% endhint %}

## Randomness Contract \(RandomAuRa\)

RandomAura is an upgradeable contract, so it includes both an implementation and proxy address. To access, utilize the proxy address \(`RandomAuraProxy`\) along with the ABI of the implementation contract \(`RandomAuraCode`\). Seed values are read from the proxy contract.

| Contract | Address | Last Update |
| :--- | :--- | :--- |
| RandomAuRaCode | [0x2ad3Bbe87C9ab4898455a7248Dc7B585618CC437](https://explorer.latam-blockchain.com/address/0x2ad3Bbe87C9ab4898455a7248Dc7B585618CC437/transactions) | Sep 2021 |
| RandomAuRaProxy | [0xB49a42fE04439b8A0Ca389372C74c8B6597552A0](https://explorer.latam-blockchain.com/address/0xB49a42fE04439b8A0Ca389372C74c8B6597552A0/transactions) | Sep 2021 |

{% hint style="info" %}
The current implementation requires a chain running Parity's AuRa consensus mechanism with version 3.2.5+ or Nethermind v 1.10.71. The Random Number generation contract was [introduced in this PR](https://github.com/paritytech/parity-ethereum/pull/10946).
{% endhint %}

