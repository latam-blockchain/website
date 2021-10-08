# Protocol Related Terms

{% tabs %}
{% tab title="Protocol " %}
* [Aura Algorithm](protocol-terms.md#aura-algorithm)
* [Block/Bridge Rewards ](protocol-terms.md#block-bridge-rewards)
* [Bridge ](protocol-terms.md#bridge)
* [DPOS ](protocol-terms.md#dpos-delegated-proof-of-stake)
* [Emission Curve ](protocol-terms.md#emission-curve-emission-schedule)
* [Epoch ](protocol-terms.md#epoch-staking-epoch)
* [Epoch Number ](protocol-terms.md#epoch-number)
* [Fees](protocol-terms.md#fees)
* [Hard Cap ](protocol-terms.md#hard-cap)
* [Node ](protocol-terms.md#node)
* [Reward distribution rules ](protocol-terms.md#reward-distribution-rules)
* [Secret Number, Random number ](protocol-terms.md#secret-number-randomness-beacon)
* [Stake token ](protocol-terms.md#stake-token)
* [Technical Requirements ](protocol-terms.md#technical-requirements)
* [Withdrawal Rules ](protocol-terms.md#withdrawal-rules)
{% endtab %}
{% endtabs %}

### AuRa Algorithm

AuRa stands for Authority Round. It is the underlying algorithm used by Latam-Blockchain to ensure validators produce blocks in an honest and timely fashion. In AuRa, validators selected for each staking epoch take turns proposing blocks. A majority of validators in the current active set must agree a block is valid before it is finalized. For more information, see [https://openethereum.github.io/Aura](https://openethereum.github.io/Aura)

### Block/Bridge Rewards

Validators and their delegators receive rewards in exchange for securing the chain. **Rewards are divided equally among each validator pool participating in the current staking epoch**. After each staking epoch, reward funds collected by validator pools are available for validators and delegators to claim using the [claim function](../staking-operations/claim-stake.md). 

Within each pool, these rewards are further divided based on the reward.

{% hint style="info" %}
Details of the reward mechanism process are subject to change as we fine tune the model. 
{% endhint %}

Rewards take two forms; block and bridge rewards.

* Block rewards are allocated in LATAM, and sent to the validator pool \(validators & delegators\) responsible for creating and signing a block. **Transaction fees in Latam-Blockchain are given to validators only \(not the validator pool\)**.
* Bridge rewards are collected whenever funds \(either USD or LATAM\) are moved into or out of the chain. An entrance or exit fee may be charged, and this fee is equally distributed to all validator pools in the validator set which are active when the funds are bridged. Fee amounts are customizable through governance decisions and are currently TBD.

Reward funds collected by validator pools are distributed amongst the validator and the delegators according to the reward distribution rules at the end of each staking epoch.

![Configurable Reward Structure](../../../.gitbook/assets/block_bridge_rewards.png)

LATAM is the staking token, and USD is the Native Coin. 

### Bridge

TokenBridge instances are used to connect two chains to one another, allowing for asset conversion from 1 chain to the other. The basic mechanism involves bridge smart contracts which lock assets on one side and mint them on the other. When the assets are moved back across the bridge, they are burned and unlocked. Bridges have their own set of validators which monitor token transfers and a [governing board responsible for updates to the bridge and bridge parameters. ](../../../about-latam-blockchain/faqs/usd-bridge.md#what-is-the-bridge-governance-board)

![DPOS token is the LATAM token](../../../.gitbook/assets/bridge_1.png)

The USD bridge:

1. **USD Bridge**: An ERC20-to-Native Bridge where USDT may be converted to USD and vice versa. When USDT is “bridged”, the specified amount of USDT is locked in a contract and a corresponding amount of USD is minted on Latam-Blockchain. During this minting process, a TBD fee is collected for validators. For example, if the bridge fee is 1% and 100 USDT are “bridged”, 99 USD are transferred to the user’s wallet and 1 USD is equally distributed amongst the current validator pools\). When converted back, an exit fee may also be collected in the same manner. Any collected fees are distributed to validators and delegators at the end of a staking epoch. USD Bridge link: [WIP](WIP)  

### DPOS \(Delegated Proof of Stake\)

Delegated Proof of Stake \(DPOS\) is an extension of Proof of Stake - a consensus model that provides rewards to chain validators in exchange for providing an amount of tokens as stake. This staking process incentivizes validators to act in the best interests of the network, as their stake will be impacted \(frozen\) if malicious behavior is detected.

To increase decentralization in this model and encourage wider community participation, the **DPOS model allows any token holders to deposit LATAM**. Delegators do this by placing stake on potential validator pools \(either current validators who may be elected to the next validator set, or candidates who are not currently validators\).

Delegators do not participate in block production themselves, but provide leverage to candidates they feel will make good validators. If these candidates are selected, rewards are divided amongst the validator and their delegators.

DPOS provides the opportunity for delegators to “vote” on potential validators by staking tokens on them. Candidates are incentivized to maintain a good reputation in order to attract more delegators and increase their chances of becoming validators. The POSDAO algorithm supports a DPOS model.

For more information on DPOS, see: [https://steemit.com/dpos/@dantheman/dpos-consensus-algorithm-this-missing-white-paper](https://steemit.com/dpos/@dantheman/dpos-consensus-algorithm-this-missing-white-paper)

### Emission Curve, Emission Schedule

The emission curve or schedule refers to the total amount of tokens that will be generated by a platform. The LATAM token will be released according to a [unique emission schedule](../../latam-token/latam-token-distribution/). 

USD emission rates will not be determined by the protocol, as USD correlates 1:1 with USDT, and the amount of USD is always equal to the amount of USDT locked in the bridge smart contract.

### Epoch \(Staking Epoch\)

The time duration \(in blocks\) for which the validator set is selected. On Latam-Blockchain AuRa implementation, each staking epoch lasts for 120992 blocks, which corresponds to a one-week timeframe with 5 second blocks. This value is configurable for other chains adopting the protocol.

### Epoch Number

The number of the current staking epoch. The staking epoch increments every 120992 blocks on Latam-Blockchain. A new validator set is chosen for each epoch.

### Fees

Fees are collected from users of Latam-Blockchain and divided amongst validator pools. Fees are charged for bridge events and transactions.

* **Bridge fees**: A transaction percentage fee may be charged whenever tokens are locked or unlocked in a bridge contract. Entrance and exit fees may be collected for both USDT &lt;-&gt; USD transfers \(collected in Latam-Blockchain\) as well as LATAM \(mainnet\) &lt;-&gt; LATAM \(Latam-Blockchain\) transfers \(collected in LATAM\). Assessed bridge fees are split equally between validator pools active at the end of staking epoch. Fee percentages are determined through the [Bridge Governing Process](../../../about-latam-blockchain/faqs/usd-bridg.md#what-is-the-bridge-governance-board).
* **Transaction Fees \(Gas fees\)**: Transaction fees are assessed for any Latam-Blockchain transactions such as sending USD to another wallet or interacting with a smart contract. These fees are currently sent to the validator who seals the block in which the transactions take place \(transaction fees are not split among pool participants, they are only received by the validator\). Currently, transaction fees Latam-Blockchain are extremely low. As chain usage grows, these fees may be redirected to support additional aspects of the protocol. 

### Hard Cap

The LATAM token is subject to limited distribution, and the hard cap describes the maximum amount that will be released to various entities.  [See additional information related to the release schedule](../../stake-token/stake-token-distribution/token-release-schedule.md).

### Node

Candidates and validators are responsible for maintaining a node capable of verifying transactions and storing the entirety of the chain. [A node must meet the technical requirements of the protocol](../../../for-validators/for-consensus-validators/node-deployment/manual-deployment.md).  A node must keep their version of the Blockchain client up-to-date and monitor the health of the node regularly. Latam-Blockchain support 2 clients, [OpenEthereum ](../../../for-developers/install-latam-client/parity.md)and [Nethermind](../../../for-developers/install-latam-client/nethermind.md).

### Reward Distribution Rules

Block rewards are shared by all validator pools participating in consensus. Rewards are distributed to validator pools according to the following rules:

1. Each pool within the validator set receives an equal share of the reward \(if all validators always produce blocks and don’t skip\) at the end of staking epoch. Skips will results in a lower reward share. If there are too many skips, [a validator pool can be banned](operational-terms.md#ban).
2. Pool rewards are distributed proportionally \(can be minimums set, currently proportional based on stake\).

Rewards are tallied and stored in a smart contract as each block is closed, and are distributed at the end of each staking epoch.

Detailed examples are available in the POSDAO whitepaper. [POSDAO white paper](https://forum.poa.network/t/posdao-white-paper/2208)

### Secret Number, Randomness Beacon

The protocol implements a random number generator similar to ​RANDAO​, which is used to select a set of validators from the group of candidates at the start of each staking epoch. This number is used to add random variation to validator selection, although candidates with larger pools have a higher likelihood of selection to a validator set for each staking epoch \(candidates with higher stakes are probabilistically selected as validators for more staking epochs\).

This random number is generated by the current validator set during the staking epoch. Generation consists of several commits and reveal rounds, resulting in a cumulative process where entropy increases over the course of the epoch. If a validator skips revealing their secret number too often, or fails to reveal it in the last collection round \(which can influence selection for the next validator set\), they are treated as malicious and [banned](operational-terms.md#ban).

### LATAM token

LATAM is the staking token for Latam-Blockchain. It is an ERC20 equivalent \(ERC677\) on the Ethereum mainnet, and an ERC20 equivalent \(ERC677\) when bridged to Latam-Blockchain. 

### Technical Requirements

In order to run a node, certain technical requirements should be met. 

Minimal system requirements:

* OS: Ubuntu Linux 16.04 LTS with root or sudo-user access over ssh
* CPU: minimum 2 cores
* RAM: minimum 4GB
* Disk: SSD minimum 50GB
* Open network ports: SSH port \(default 22 TCP\), 30303 TCP/UDP. For security purposes, close other ports.

### Withdrawal Rules

Withdrawals are allowed during the [open staking window](operational-terms.md#staking-window).  

* **Only LATAM placed in the current staking epoch may be immediately withdrawn from a validator’s pool**. 
* An order for withdrawal can be placed on an active validating pool. The ordered amount can be claimed during subsequent staking epochs.
* Any amount of LATAM including the entire stake amount \(minus any stake currently ordered for withdrawal and not yet claimed\) can be withdrawn from an active candidate during the staking window.
* If an order for withdrawal has been placed, the amount can be changed during a staking epoch. To add an additional amount to withdraw, simply enter the additional amount. To withdraw a lower amount, enter a negative number to reduce the ordered amount. A transaction is created for each adjustment.
* Stake may be withdrawn during the open staking window from an inactive validator, as long as that validator is not banned. If banned, the banned until date will show the date when stake may be withdrawn from the pool.

{% hint style="info" %}
See more details in the [Staking Operations -&gt; Withdraw Stake](../staking-operations/withdraw-stake.md) section.
{% endhint %}

