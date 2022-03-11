func goldenTriangle(arr: [Int]) -> Bool {
    if arr.count < 3 {
        print("Invalid input, cannot form an triangle")
        return false
    }

    let tri = arr.sorted()

    for i in 0 ... tri.count - 3 {
        if tri[i] + tri[i + 1] > tri[i + 2], tri[i] + tri[i + 2] > tri[i + 1], tri[i + 2] + tri[i + 1] > tri[i] {
            return true
        }
    }
    return false
}
