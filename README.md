# GasMileagePriceDifference

Spent - Amount prepaid

Approximated - Amount calculated by the Gas Price, DTE, Gas Tank Capacity, Current MPG

Price Taken - Amount actually used to refill the gas tank to capacity

IsMazda CX-5 - specification of which vehicle the prepaid gas fill occurred in

|Column|Unit|
|------|----|
|spend | $  |
|approximated to be spent | $ |
|Amount actual spent | $ |
|Vehicle | 0-2020 Corolla Hybrid, 1-Mazda CX-5 |

## Motivation

During pre-paid refilling activities a significant difference between the approximated refill price and the actual amount received by the vehicle's tank differed visually in the dollar amount

During initial model calculation an accident occurred where a piece of sheet metal put my vehicle into the repair shop and a rental was needed temporarily and a dummy variable was needed to account for two different models where the same discrepancy happened

Giving the opportunity to also calculate statistics on a logistic regression