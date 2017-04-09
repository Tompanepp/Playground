let orders = [3, 5, 7, 8, 5, 25, 8, 4]

let sumOrders = orders.reduce[(sum, x) => x + sum, 0]

let averageOrders = totalOrders/orders.length