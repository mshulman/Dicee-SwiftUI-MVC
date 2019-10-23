//
//  DiceeModel.swift
//  Dicee-SwuiftUI
//
//  Created by Michael Shulman on 10/22/19.
//  Copyright © 2019 Michael Shulman. All rights reserved.
//

import SwiftUI

final class DiceeModel:  ObservableObject {

    @Published var die = [Int: Int]()
    
    func roll() {
        die[1] = Int.random(in: 1...6)
        die[2] = Int.random(in: 1...6)
        print("rolling, rolling, rolling")
    }
}
