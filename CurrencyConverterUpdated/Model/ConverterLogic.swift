//
//  ConverterLogic.swift
//  CurrencyConverterUpdated
//
//  Created by Jasmine Sung on 18/2/2024.
//

import Foundation

struct ConverterLogic {
    
    func convertHKD(_ amount: Int) -> Float {
        return Float(amount) * 7.82
    }
    
    func convertTWD(_ amount: Int) -> Float {
        return Float(amount) * 31.35
    }
    
    func convertGBP(_ amount: Int) -> Float {
        return Float(amount) * 0.79
    }
    
    func convertPHP(_ amount: Int) -> Float {
        return Float(amount) * 55.97
    }
}
