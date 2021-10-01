---
description: 'Reward rules, types and distribution'
---

# Rewards in a Dual Token Environment

POSDAO is implemented with a dual token structure. 

1. **USD** is the transactional stable coin, used for txs and fees.
2. **LATAM** is the volatile staking coin used to protect consensus.

To participate in POSDAO consensus, validator candidates must provide collateral in the form of LATAM. 2K minimum LATAM is required to create a validator pool. Delegators may place additional LATAM collateral \(200 is current minimum\) into any pool\(s\) they would like to support. Validator pools with a higher amount of LATAM have a higher probability of selection to the next validator set. 

While the amount of LATAM in a validator pool influences the chances of selection to a validator set, it does not influence the reward amount validator's receive for sealing blocks. Rules are as follows: 

1. Each pool in the validator set receives an equal share of the block reward on block creation.
2. Pool rewards are distributed proportionally based on amount in the pool.


In POSDAO rewards accumulate based on actions that occur during a staking epoch, and are distributed at the end of the epoch to participating validators.

* **Rewards for sealing blocks \(LATAM\)**: LATAM placed in the protocol \(snapshot at the beginning of an epoch\) generates a 15% APR which is distributed to validator pools at the end of a staking epoch.
* **Transaction fees \(USD\)**: Sent to validator that seals the block containing the transactions.
* **Bridge Fees \(LATAM & USD\)**: Fees assessed when USDT is bridged to Latam-Blockchain, and when USD is bridged to a foreign chain. 


