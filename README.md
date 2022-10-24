# farmhub

### Things to Note:
1. When you create a new Price with a date that is not today, the sub-price of it will still use the actual date when the price creation is done.


### General Price Structure:
1. Each [Price] of a [Produce] will be represented as a single document.
2. Only one [Price] document is used to represent the price for a specific date. For example, for a [Produce] named Watermelon, there can be a [Price] document for the date 10-5-2022. 
3. A [Price] is made up of multiple fields, but the actual price, i.e. the number ($), is dependent on the [subPrices] within it. For example, a [Price] with a price of 6, is the result of the [subPrices] which are 7 and 5.
4. To put it simply, the price in [Price] document is the average of [subPrices].
5. Whenever the admin adds a new price to a [Produce], that price is actually added to the [subPrices] in the [Price] document of the specific date chosen.
6. There may be some naming confusion in [Price]. [subPrices], [allPricesMap], [allPricesWithDateList] should all generally mean the same thing, with nuanced differences between them.
