import UIKit

// public class ListNode {
//      public var val: Int
//      public var next: ListNode?
//      public init() { self.val = 0; self.next = nil; }
//      public init(_ val: Int) { self.val = val; self.next = nil; }
//      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//  }

// int case
//func addTwoNumbers(_ l1:[Int], _ l2:[Int]) ->  [Int] {
//    let firstNum = l1.reversed().reduce(0, { $0 * 10 + $1})
//    let secondNum = l2.reversed().reduce(0, { $0 * 10 + $1})
//    let plusNum = firstNum + secondNum
//    let plusString = String(plusNum)
//    let reversedPlusString = String(plusString.reversed())
//    let resultArray = reversedPlusString.compactMap { Int(String($0)) }
//    return resultArray
//    }

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        _addTwoNumbers(l1, l2)
    }

    func _addTwoNumbers(_ numA: ListNode?, _ numB: ListNode?, carryOver: Int = 0) -> ListNode? {
        guard numA != nil || numB != nil else {
            return carryOver > 0 ? ListNode(carryOver) : nil
        }
        let sum = addTwoNumbers(numA?.val, numB?.val, carryOver: carryOver)
        return ListNode(sum.unit, _addTwoNumbers(numA?.next, numB?.next, carryOver: sum.carryOver))
    }

    private func addTwoNumbers(_ numA: Int?, _ numB: Int?, carryOver: Int) -> (unit: Int, carryOver: Int) {
        var sum = carryOver
        if let a = numA {
            sum += a
        }
        if let b = numB {
            sum += b
        }
        return (unit: sum % 10, carryOver: sum / 10)
    }
