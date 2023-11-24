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
    
    func bubbleSort(data: [Int]) -> [Int] {
        return [Int]()
    }
    
}
