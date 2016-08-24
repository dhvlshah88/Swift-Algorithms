//: Playground - noun: a place where people can play

let numbers = [11, 89, 78, 3, 5, 8, 30, 20, 40]

// Sorted array for binary search
let sorted = numbers.sort()

// Iterative Version
func binarySearch<T: Comparable>(numbers: [T], key:T) -> Int? {
    var range = 0..<numbers.count
    
    while range.startIndex < range.endIndex {
        let mid = range.startIndex + (range.endIndex - range.startIndex) / 2
        if numbers[mid] == key {
            return mid
        } else if numbers[mid] < key {
            range.startIndex = mid + 1
        } else {
            range.endIndex = mid
        }
    }
    
    return nil
}

binarySearch(sorted, key: 3)
binarySearch(sorted, key: 89)
binarySearch(sorted, key: 5)
binarySearch(sorted, key: 0)

// Recursive Version
func binarySearch<T: Comparable>(numbers: [T]?, key:T, range:Range<Int>) -> Int? {
    if range.startIndex >= range.endIndex {
        return nil
    } else {
        let mid = range.startIndex + (range.endIndex - range.startIndex)/2
        if numbers![mid] < key {
            return binarySearch(numbers, key: T, range: mid + 1 ..< range.endIndex)
        } else if numbers![mid] > key {
            return binarySearch(numbers, key: T, range: range.startIndex ..< mid)
        } else {
            return mid;
        }
    }
}

binarySearch(sorted, key: 3, range: 0..<sorted.count)
binarySearch(sorted, key: 89, range: 0..<sorted.count)
binarySearch(sorted, key: 5, range: 0..<sorted.count)

