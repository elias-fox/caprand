//
//  main.swift
//  trand
//
//  Created by Elias Fox on 11/24/18.
//  Copyright © 2018 Elias Fox. All rights reserved.
//

import Foundation

var MessageList = [String]()
var TransformedList = [String]()

while let line = readLine() {
    MessageList.append(line.lowercased())
}

if CommandLine.arguments.count > 0 {
    for i in 1..<CommandLine.arguments.count {
        MessageList.append(CommandLine.arguments[i].lowercased())
    }
}

for line in MessageList {
    var newline = ""
    let words = line.split(separator: " ")
    
    for w in words {
        switch w.count {
            case 1:
                if w == "a" { newline += "A" }
                else if w == "i" { newline += "i" }
                else { newline += (Bool.random() ? w.uppercased() : w.lowercased()) }
            
            case 2:
                newline += String(w.first!) + String(w[w.index(w.startIndex, offsetBy: 1)]).uppercased()
            
            default:
                var upper = 0, lower = 0
                for c in w {
                    if (Bool.random() && upper < 2) || lower >= 2 {
                        upper += 1
                        lower = 0
                        newline += String(c).uppercased()
                    }
                    else {
                        upper = 0
                        lower += 1
                        newline += String(c)
                    }
                }
        }
        newline += " "
    }

    TransformedList.append(newline)
}

for line in TransformedList {
    print(line)
}
