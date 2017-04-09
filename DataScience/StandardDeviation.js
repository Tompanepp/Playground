//Identify outliers in dataset using standardDeviation
let orders = [3, 5, 7, 8, 5, 25, 8, 4]

let arrayAverage = arr => arr.reduce((sum, x) => x + sum, 0)/ arr.length

//1. average of the dataset (i.e. orders)

let averageOrders = arrayAverage(orders)


//2. average distance from the mean (i.e from the average above)
    //differences
let differences = orders.map(x =>  averageOrders - x).map(x => x * x)

//variance
let averageDifference = arrayAverage(differences)

let standardDeviation = Math.sqrt(averageDifference)

//3. determine outliers
let isOutlier = orders.map(x => x - averageOrders - standardDeviation > 0)

console.log(isOutlier)