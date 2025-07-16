func binarySearch(list: [Int], target: Int) -> Int? {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = list[mid]
        
        if guess < target {
            low = mid + 1
        } else if guess > target {
            high = mid - 1
        } else {
            return mid
        }
    }
    return nil
}

let list: [Int] = [3, 7, 8, 11, 21, 23, 77, 88, 91, 102, 103]
print("last index", list.count - 1)

let result = binarySearch(list: list, target: 102)

if let result {
    print("Element found. Its index is -> ", result)
} else {
    print("Element not found!")
}
