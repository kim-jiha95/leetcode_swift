import UIKit

func intToRoman(_ num: Int) -> String {
    var one = (num % 10)
    var oneRoman: String
    if one == 9 {
        oneRoman = "IX"
    } else if one >= 5 {
        oneRoman = "V" + String(repeating: "I", count: one - 5)
    } else if one == 4 {
        oneRoman = "IV"
    } else {
        oneRoman = String(repeating: "I", count: one)
    }
    var ten = (num % 100) / 10
    var tenRoman: String
    if ten == 9 {
        tenRoman = "XC"
    } else if ten >= 5 {
        tenRoman = "L" + String(repeating: "X", count: ten - 5)
    } else if ten == 4 {
        tenRoman = "XL"
    } else {
        tenRoman = String(repeating: "X", count: ten)
    }
    var hundread = (num % 1000) / 100
    var hundredRoman: String
    if hundread == 9 {
        hundredRoman = "CM"
    } else if hundread >= 5 {
        hundredRoman = "D" + String(repeating: "C", count: hundread - 5)
    } else if hundread == 4 {
        hundredRoman = "CD"
    } else {
        hundredRoman = String(repeating: "C", count: hundread)
    }
    var thousand = (num % 10000) / 1000
    var thousandRoman = String(repeating: "M", count: thousand)
    var romanNumeral = thousandRoman + hundredRoman + tenRoman + oneRoman
    return romanNumeral
   }
intToRoman(1994)
