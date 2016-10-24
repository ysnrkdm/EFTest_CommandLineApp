import Foundation
import RandomGenerator

let seed = Date().hashValue
RandomGeneratorXor128.seed = seed
print("Seed set: \(seed)")
var randHelper = RandomGeneratorXor128.generator()

_ = randHelper.getNextRandomUInt()
_ = randHelper.getNextRandomUInt()
_ = randHelper.getNextRandomUInt()
_ = randHelper.getNextRandomUInt()

var rand = randHelper.getNextRandomUInt()
rand = rand%100

while(true) {
    print("Your guess? [0-99, >=100 to exit]")

    let n: UInt = UInt(readLine()!)!

    if (n >= 100) {
        break
    } else if (n == rand) {
        print("Bingo!\nGenerating next number...")
        var rand = randHelper.getNextRandomUInt()
        rand = rand%100
    } else if (n < rand) {
        print("More!")
    } else /* n > rand */ {
        print("Less!")
    }
}

print("Bye!")
