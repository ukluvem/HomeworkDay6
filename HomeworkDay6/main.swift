//
//  main.swift
//  HomeworkDay6
//
//  Created by Apple on 30/05/2021.
//

import Foundation


//MARK: - Bài 1
func chenSauMax() {
    
    var numArrays = [10, 44, 22, -34, 12, 45, 50, 23, 66]
    print("Mảng số ban đầu là: \(numArrays)")
    
    print("Mời nhập số: ", terminator: "")
    let X = readLine()
    
    guard let numX = X, let soX = Int(numX) else {
        return
    }
    
    var maxArray = numArrays[0]
    
    for i in numArrays {
        if maxArray < i {
            maxArray = i
        }
    }
    
    for (index, value) in numArrays.enumerated() {
        if maxArray == value {
            numArrays.insert(soX, at: index + 1)
            print(numArrays)
            return
        }
    }
}

//chenSauMax()

//MARK: - Bài 2
func chenSapXep() {
    
    var numArrays = [10, 44, 22, -34, 12, 45, 50, 23, 66]
    print("Mảng số ban đầu là: \(numArrays)")
    
    print("Mời nhập số: ", terminator: "")
    let X = readLine()
    
    guard let numX = X, let soX = Int(numX) else {
        return
    }
    
    numArrays.append(soX)
    numArrays.sort()
    print("Mảng sắp xếp tăng dần là \(numArrays)")
    
}
//chenSapXep()

//MARK: - Bài 3
func kiemTraNguyenTo() {
    print("Mời nhập số n: ", terminator: "")
    let X = readLine()
    
    guard let numX = X, let n = Int(numX) else {
        return
    }
    
    var count = 0
    
    for i in 1..<n {
        if n % i == 0 {
            count += 1
        }
    }
    if count > 1 {
        print("\(n) không là số nguyên tố")
        kiemTraNguyenTo()
    } else {
        print("\(n) là số nguyên tố")
    }
}
//kiemTraNguyenTo()

//MARK: - Bài 4
func demSoNguyenTo() {
    print("Mời nhập số a: ", terminator: "")
    let a = readLine()
    
    print("Mời nhập số b: ", terminator: "")
    let b = readLine()
    
    guard let A = a, let B = b, var dau = Int(A), let cuoi = Int(B) else {
        return
    }
    
    var i = 1
    var count = 0
    var countNguyenTo = 0
    
    while dau <= cuoi {
        while i <= dau {
            if dau % i == 0 {
                count += 1
                i += 1
            } else {
                i += 1
            }
        }
        if count == 2 {
            countNguyenTo += 1
        }
        dau += 1
        i = 1
        count = 0
    }
    print("Số các số nguyên tố khoảng là \(countNguyenTo) ")
}
//demSoNguyenTo()

// MARK: Amstrong
func amstrong() {
    print("Mời nhập số: ", terminator: "")
    let amstrongs = readLine()
    
    guard let amStr = amstrongs, let amst = Int(amStr) else {
        return
    }
    
    if amst < 0 || amst > 1000 {
        amstrong()
    }
    
    var counter = amst
    var count = 0
    
    var temp = amst
    var temp1 = 0
    var sum = 0
    
    while counter != 0 {
        counter = counter / 10
        count += 1
    }
    
    while temp != 0 {
        temp1 = temp % 10
        temp = temp / 10
        sum = sum + Int(powf(Float(temp1), Float(count)))
    }
    
    if sum == amst {
        print("Số \(amst) là số Amstrong")
    } else {
        print("Số \(amst) không là số Amstrong")
    }
    
}

amstrong()

