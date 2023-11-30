//
//  utility.swift
//  Algorithims
//
//  Created by William Eze on 24/11/2023.
//

import Foundation

class Algorithims{
    func quickSort(data:[Int]) -> [Int]{
        let pivot = data[0]
        var left = [Int]()
        var right = [Int]()
        
        for (i,v) in data.enumerated(){
            if i != 0 {
                if v <= pivot{
                    left.append(v)
                }
                else {
                    right.append(v)
                }
            }
        }
        var final = [Int]()
        if left.count > 0 {
            final.append(contentsOf: quickSort(data: left))
        }
        final.append(pivot)
        
        if right.count > 0 {
            final.append(contentsOf: quickSort(data: right))
        }
        
        return final
    }
    
    func linearSearch(data: [Int], target: Int) -> Bool {
        if data.count < 1{
            return false
        }
        else{
            for i in 0 ..< data.count{
                if data[i] == target{
                    return true
                }
                else{
                    return false
                }
            }
        }
        return false
    }
    
    func binarySearch(data: [Int], target: Int) -> Bool{
        var begin_index = 0
        var end_index = data.count - 1
        
        while begin_index <= end_index{
            let midpoint = Int((begin_index + end_index) / 2)
            
            if data[midpoint] == target {
                return true
            }
            else if data[midpoint] < target{
                begin_index = midpoint + 1
            }
            else{
                end_index = midpoint - 1
            }
        }
        return false
    }
    
    func bubbleSort(data: [Int]) -> [Int]{
        var mutatedData = data
        let secondToLastIndex = mutatedData.count - 2
        var swap = true
        while swap == true{
            swap = false
            for i in 0...secondToLastIndex{
                if mutatedData[i] > mutatedData[i+1]{
                    let temp = mutatedData[i]
                    mutatedData[i] = mutatedData[i+1]
                    mutatedData[i+1] = temp
                    swap = true
                }
            }
        }
        return mutatedData
    }
    
    func insertionSort(data: [Int]) -> [Int] {
        var mutatedData = data
        for i in 1...(mutatedData.count-1){
            for i in stride(from: i, to: 0, by: -1){
                while mutatedData[i-1] > mutatedData[i] && i > 0{
                    let temp = mutatedData[i-1]
                    mutatedData[i-1] = mutatedData[i]
                    mutatedData[i] = temp
                }
            }
        }
        return mutatedData
    }
    
    func mergeSort(_ array: [Int]) -> [Int]{
        // 1
        guard array.count > 1 else { return array }

        let middleIndex = array.count / 2

        // 2
        let leftArray = mergeSort(Array(array[0..<middleIndex]))
        let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
        
        return merge(leftArray, rightArray)
    }
    
    func merge(_ left: [Int], _ right: [Int]) -> [Int]{
        var orderedArray: [Int] = []
        var leftIndex = 0
        var rightIndex = 0
        
        while leftIndex < left.count && rightIndex < right.count{
            let leftElement = left[leftIndex]
            let rightElement = right[rightIndex]
            
            if leftElement < rightElement {
                orderedArray.append(leftElement)
                leftIndex += 1
            } else if leftElement > rightElement {
                orderedArray.append(rightElement)
                rightIndex += 1
            } else {
                orderedArray.append(leftElement)
                leftIndex += 1
                orderedArray.append(rightElement)
                rightIndex += 1
            }
            
            while leftIndex < left.count{
                orderedArray.append(left[leftIndex])
                leftIndex += 1
            }
            while rightIndex < right.count{
                orderedArray.append(right[rightIndex])
                rightIndex += 1
            }
            
        }
        
        return orderedArray
    }
}
