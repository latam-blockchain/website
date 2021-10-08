# EasyStaking FAQ

## Participation Questions

### How do I stake LATAM?

Go to [TODO](TODO) and connect your web3wallet. 💡 [More instructions](../../latam/easy-staking/instructions/)
 

### How do I unstake LATAM?

With the EasyStaking application you can withdraw any amount. To completely unstake, withdraw your full amount. You can do this instantly and pay a 2% fee, or schedule a withdrawal and withdraw after 12 hours.   
💡[Instructions](../../latam/easy-staking/instructions/#initiate-a-withdrawal)

### Can I withdraw just my accrued emissions?

No. Accrued emissions are calculated as a contract function on withdrawal and added to your withdrawal amount \(emissions are also sent to LP providers on withdrawal\).  
  
For example if you remove 1/2 of your staked amount from a deposit, 1/2 of your accrued emission will be automatically added to your LATAM stake withdrawal and sent to your address when the tx is processed.

### Is EasyStaking Audited?

Yes, [Quantstamp](https://quantstamp.com/) conducted a full security audit on the EasyStaking contracts. We addressed and resolved all high, medium & low risk issues. [See more information and the full report here](../../for-developers/security-audits.md#easystaking-audit-by-quantstamp).

### How do I participate as a Liquidity Provider \(LP\)?

Simply add LATAM and ETH to the following Uniswap pool. [TODO](TODO)

You will receive rewards based on the [LP distribution contract](../../latam/easy-staking/#stake-lp-distribution-script). The top 100 liquidity providers will split the rewards based on the percentage of LATAM they have contributed to the pool.

## APR Questions

### Is there a rewards calculator?

There is a simple rewards calculator on the EasyStaking site. A more advanced model is available at [https://www.stakingrewards.com/earn/xdai/calculate](https://www.stakingrewards.com/earn/xdai/calculate). Here you can change different parameters and view anticipated rewards for participating in Easy Staking or as a Liquidity Provider.

### How is APR calculated for EasyStaking?

APR is calculate in 2 ways, each with a maximum 7.5% for the EasyStaking staker \(totaling a max of 15%\). 

1\) **Time based**: Emissions are earned based on the amount of time in the protocol. These rise quickly and then level off, based on a [sigmoid function](https://www.desmos.com/calculator/2xtimbnzqw).  

If you click on a timepoint on the sigmoid graph you will see the number of seconds corresponding to the APR. In this example, the \# of seconds is 880,000 \(10.18 days\) and APR is 2.011%.

![Click on the line to see the APR based on \# of seconds staked](../../.gitbook/assets/sigmoid%20%281%29.png)

2\) **Supply based:** APR based on the total supply. The total supply can also be adjusted using the `totalSupplyFactor` parameter \(currently set to 50%\). If the supply in the contract is 1.25M and the total supply is set to 4,268,752.50 \(total supply \* `totalSupplyFactor`\), then the Supply APR is `1,250,000/4,268,752.5 * 7.5` or 2.196%.

{% hint style="success" %}
For the preceding example, the time based emission after 10.2 days is 2.011 APR, and the Supply based emission with 1.25M LATAM staked is 2.196. This results in a \(2.011 + 2.196 = 4.207\) 4.207% APR if a withdrawal is processed at this time. 
{% endhint %}

### I am staking for {1 day, 1 week, 1 month etc} how much APR will I earn?

We find this using the [sigmoid function](https://www.desmos.com/calculator/2xtimbnzqw) by converting the staking time to seconds.  Here are some approximate conversions:

* 1 Day: 86400 seconds \(8.64\*10^4\)  = .19%
* 1 Week 604,800 seconds \(6.04\*10^5\) = 1.4% 
* 1 Month 2419200 seconds \(2.41\*10^6\) = 4.53% 
* 2 Months: 4838400 seconds. \(4.83 \*10^6\) = 6.25%

This time-based APR is then added to the supply based APR to get total APR on withdrawal. Supply APR is linear and can be found with the following formula:   
  
`Stake in EasyStaking Contract / (Total LATAM Supply * supplyFactor(.5))  * 7.5`

### How is APR calculated for Liquidity Providers \(LP\)

Liquidity providers receive their APR accordingly:`15 - ( EasyStaking time APR + EasyStaking supply APR)`

* For example, if a staker withdraws with a 2.011% time APR and a 2.196% supply APR, the LP contract receives 15 - \(2.011 + 2.196\) = 10.793%.  This amount is distributed amongst the top 100 LP providers based on how much LATAM they have in the LP contract. 
* LP providers also split the 2% instant withdrawal/unbonding fee when instant withdrawals are processed.
* Rewards to LPs are distributed based on the [LP distribution script](../../latam/easy-staking/#stake-lp-distribution-script).

### I heard I will earn 15% APR. Why is it lower than that?

15% is the total emissions earned on all LATAM staked in the contract. This amount is divided amongst stakers and liquidity providers.

If a participant stakes for a long time \(6+ months\) and the supply in the contract relative to total supply is very high, the APR for this individual will approach 15%, but will never reach the full 15% due to the sigmoid function and supply limits. 

### What is the predicted APR over time?

APR will fluctuate based on the amount in the contract and how long you have staked. See the questions above for answers on how APR is derived for stakers and for liquidity providers.

### Will I make more APR as an LP \(Liquidity Provider with Uniswap\) or as a staker with EasyStaking?

We will see - it depends on how the game is played! In general, if not much supply is staked and stakers unstake quickly, liquidity providers will receive higher emissions. However, if stakers stake for a long time, and the supply in EasyStaking continues to grow, stakers will earn more.

APR emissions may also depend on timing for liquidity providers. If a large staker leaves the protocol, the remaining APR \(15 - stakers APR\) will go to all LPs, regardless of how long they have been an LP. If an LP starts right before a big unstaking event, they may earn a considerable amount of LATAM.

From a risk management perspective, Easy Staking involves a single token rather than multiple tokens, and the contracts have been thoroughly audited. 

So the answer is "it depends", and we are excited to see how it plays out in the protocol.

