/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */

import Foundation

var restaurantRatings : [Int] = []
/*:
 2. Now populate the array with twenty random ratings between 1 and 100.
 */
for _ in 1...20 {
    restaurantRatings.append(Int(arc4random_uniform(99)+1))
}

/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */
var totalRating = 0

for restaurantRating in restaurantRatings {
    totalRating += Int(restaurantRating)
}
let averageRating = totalRating / restaurantRatings.count
/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */
var sadCustomers : [Double] = []

for restaurantRating in restaurantRatings {
    if restaurantRating < 80 {
        sadCustomers.append(Double(restaurantRating))
    }
}
print("\(Double(sadCustomers.count * 100 / restaurantRatings.count)) percent of customers found the meal less than satisfatory")


/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */
var veryBad = 0
var bad = 0
var fair = 0
var satisfactory = 0
var stellar = 0

for restaurantRating in restaurantRatings {
    switch restaurantRating {
    case 1...25:
        veryBad += 1
    case 26...49:
        bad += 1
    case 50...79:
        fair += 1
    case 80...89:
        satisfactory += 1
    case 90...100:
        stellar += 1
    default:
        print("No comment")
    }
}
print("\(veryBad) customers found the meal to be very bad, \(bad) customers found the meal to be bad \(fair) customers found the meal to be fair, \(satisfactory) customers found the meal to be satisfactory, \(stellar) customers found the meal to be stellar.")

