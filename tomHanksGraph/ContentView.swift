//
//  ContentView.swift
//  tomHanksGraph
//
//  Created by Danika Peet on 2024-11-04.
//

import SwiftUI
import Charts

struct classInformation: Identifiable {
    let id = UUID()
    let classCode: String
    let className: String
    let classGrade: Double
}

struct ContentView: View {
    var body: some View {
        let classCode = ["SBI3U", "ENG3U", "TEJ3M", "ICS3U", "CHW3M", "MCR3U", "BAF3M"]
        let className = ["Biology", "English", "Computer Enineering Technology", "Introduction to Computer Studies", "World History since the Fifteenth Century", "Functions", "Introduction to Financial Accounting"]
        let classGrade = [68.2, 67.0, 90.1, 69.3, 73.6, 65.7, 78.5]
        
        Chart {
                ForEach(classCode.indices, id: \.self) { index in
                    BarMark(
                        
                        x:.value("class", classCode[index]),
                        y:.value("grade", classGrade[index])
                    )
                    .foregroundStyle(by: .value("class", className[index]))
                    
                    .annotation {
                        Text("\(classGrade[index])")
                    }
                }
        }
    }
}
    #Preview {
        ContentView()
    }

