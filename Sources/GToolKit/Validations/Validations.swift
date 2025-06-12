//
//  Validations.swift
//  GToolKit
//
//  Created by Jeferson Dias dos Santos on 12/06/25.
//


import Foundation

public struct Validations {
    
    public static func isValidDate(_ dateString: String) -> Bool {
        let trimmed = dateString.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let possibleFormats = [
            "dd/MM/yyyy",
            "yyyy-MM-dd",
            "yyyy-MM-dd'T'HH:mm:ssZ",
            "yyyy-MM-dd'T'HH:mm:ss",
            "yyyy-MM-dd HH:mm:ss",
            "dd-MM-yyyy"
        ]
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        
        let calendar = Calendar.current
        
        for format in possibleFormats {
            formatter.dateFormat = format
            if let date = formatter.date(from: trimmed) {
                let year = calendar.component(.year, from: date)
                if year >= 1900 {
                    return true
                }
            }
        }
        
        return false
    }

    public static func isValidCPF(_ cpf: String) -> Bool {
        let numbers = cpf.filter(\.isNumber).compactMap { Int(String($0)) }
        guard numbers.count == 11 && Set(numbers).count != 1 else { return false }
        
        func digitCalculator(slice: ArraySlice<Int>, factor: Int) -> Int {
            let sum = zip(slice, stride(from: factor, to: 1, by: -1)).map(*).reduce(0, +)
            let result = 11 - (sum % 11)
            return result >= 10 ? 0 : result
        }
        
        let d1 = digitCalculator(slice: numbers.prefix(9), factor: 10)
        let d2 = digitCalculator(slice: numbers.prefix(10), factor: 11)
        return d1 == numbers[9] && d2 == numbers[10]
    }
}
