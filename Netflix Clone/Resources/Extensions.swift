//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Kübra Cennet Yavaşoğlu on 1.03.2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}



























