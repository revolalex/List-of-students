//
//  Learner.swift
//  Student List
//
//  Created by Ludovic Ollagnier on 09/12/2019.
//  Copyright © 2019 Tectec. All rights reserved.
//

import Foundation

struct Learner {

    enum Gender {
        case male
        case female
    }

    let name: String
    let gender: Gender

    func sayHi() -> String {
        switch gender {
        case .female:
            return "\(name) : Je suis présente\n"
        case .male:
            return "\(name) : Je suis présent\n"
        }
    }
}
