//
//  main.swift
//  trand
//
//  Created by Elias Fox on 11/24/18.
//  Copyright © 2018 Elias Fox. All rights reserved.
//

import Foundation

if CommandLine.arguments.count > 0 {
    for i in 1..<CommandLine.arguments.count {
        print(CommandLine.arguments[i])
    }
}
