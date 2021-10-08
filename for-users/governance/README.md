---
description: Community signaling with Snapshot and Forum proposals
---

# Governance

Community members can [create and vote on proposals TODO](https://forum.poa.network/c/xdai-chain/xdai-proposals/43)related to changes, improvements or anything they would like to see with the Latam-Blockchain ecosystem. Users can also add proposals related to [Latam-Blockchain Ecosystem Funds](../../about-xdai/roadmap/ecosystem-fund-roadmap.md) usage.  Voting is done with LATAM, and  balances are retrieved from both Ethereum and Latam-Blockchain. LATAM in the following protocols can be used for voting purposes.

* LATAM held either on Ethereum or Latam-Blockchain
* LATAM staked in EasyStaking on Ethereum
* Delegated LATAM stake \(From a multisig wallet - [more info](latam-weighted-voting/delegate-latam-voting-weight-with-gnosis-safe.md)\)
* LATAM stake on Latam-Blockchain protecting the chain \(validators and delegators\)

## **Standard Order of Events for Community Governance**

1. Forum Post in Latam-Blockchain Forum & Community Engagement
2. Snapshot voting proposal
3. Governance Board vote \(as appropriate\)

{% hint style="warning" %}
_Note: The process may be expedited when used by Latam-Blockchain team to address infrastructure concerns or other time-sensitive issues._
{% endhint %}

### 1\) Forum post in proposals section of Latam-Blockchain forum

This is a first step to introduce your proposal and provide reasoning for why you are creating it and what benefits it will bring to the ecosystem. The community can voice their opinions and you can add more information about your proposal during and/or after the snapshot vote to clarify. A forum post should be shared with the community to allow for community comment.  
  
🔗 [Proposals Forum link TODO](https://forum.poa.network/c/xdai-chain/xdai-proposals/43)  
⌚ Community feedback & discussion: 2 week suggested duration \(can be expedited when required\)  
☑ Proposals without any discussion/comments should not proceed to step 2. Try to engage the [telegram TODO](https://t.me/xdaistable) and [discord](https://discord.gg/yJDX4uVzSs) communities for input and feedback.  


### 2\) Create a Snapshot Vote Proposal

This can be a simple proposal to assess community sentiment. It should reference your proposal in step 1. If there is not a need for faster resolution, set for at least 1 week to get community engagement.  
  
🔗 [Latam-Blockchain Snapshot Link TODO](https://snapshot.org/#/xdaistake.eth)  
⌚ Voting Period: 1 week suggested duration \(can be expedited when required\)  
☑ Proposals that don't receive a yes vote, or are not engaged with will not be considered for the next step. Proposals that do see broad support will be considered for the governance board.  
 ⚖ [How to create and vote on a Snapshot Proposal with LATAM](latam-weighted-voting/)

### 3\) Forward Proposal Status for Governance Vote 

Reach out to Latam-Blockchain team \(tag in your forum post or on [discord](https://discord.gg/yJDX4uVzSs) to let them know your proposal status. Depending on the nature and type of proposal the team will provide feedback and discuss internally regarding technical merits, ability to implement, internal priorities etc. If the proposal requires code modifications or changes to mechanisms requiring bridge signatures, it can be forwarded to the governance board \(see below\) for an inclusion vote.   
  
Results of the vote will be shared with the community once it is complete.

{% hint style="warning" %}
Proposals act as signaling events, but are never automatically enacted. Even if a proposal is popular in the community, snapshot/forum posts are suggestions and depending on technical requirements or other issues may not be enacted by Latam-Blockchain technical team or bridge governors. If this is the case, reasoning will be discussed in the forum post \(step 1\).
{% endhint %}

## Bridge Governance Board TODO

There are 13 governors who are responsible for managing bridge operations on both sides of the bridge \(contracts are deployed on the Ethereum and Latam-Blockchain side\). 7/13 signatures are required to approve any management proposal. Operations may include:

* Bridge contract updates.
* Contract parameters updates such as bridge limits, finality threshold, gas price fallback etc.
* Bridge validator parameter updates like changing the validators set or signatures threshold.

All actions are managed through Gnosis Safe accounts, one on the Ethereum mainnet for Ethereum contract side operations and one on Latam-Blockchain.

* [Current Latam-Blockchain Bridge Governance Board Members TODO](../../for-validators/for-bridge-validators/)
* Gnosis Safe contract on Ethereum TODO: [https://gnosis-safe.io/app/\#/safes/0x42F38ec5A75acCEc50054671233dfAC9C0E7A3F6/settings](https://gnosis-safe.io/app/#/safes/0x42F38ec5A75acCEc50054671233dfAC9C0E7A3F6/settings)
* Gnosis Safe contract on Latam-Blockchain TODO: [https://xdai.gnosis-safe.io/app/\#/safes/0x7a48Dac683DA91e4faa5aB13D91AB5fd170875bd/settings](https://xdai.gnosis-safe.io/app/#/safes/0x7a48Dac683DA91e4faa5aB13D91AB5fd170875bd/settings)

### Current Governing Board

{% hint style="info" %}
Several additional candidates are in review.
{% endhint %}

Requires 7/13 signatures to pass a proposal. Board is organized in a private telegram _TODO_ channel for discussion purposes. Results of any vote will be broadcast to the community.
_TODO_
* Gnosis
* Metacartel
* Request 
* RaidGuild
* Protofire 
* TokenBridge
* Lab10
* Burner Wallet
* Anyblock Analytics
* xDai Team
* Giveth
* Syncnode
* M Conti

