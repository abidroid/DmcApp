//
//  ContentView.swift
//  DmcApp
//
//  Created by MUHAMMAD ABID on 11/05/2022.
//

// understanding swift ui
import SwiftUI

struct ContentView: View {
    
    @State var eng: String = ""
    @State var urdu: String = ""
    @State var science: String = ""
    @State var math: String = ""
    @State var cs: String = ""
    
    @State var obtainedMarks = "Obtained Marks"
    @State var percentage = "Percentage"
    @State var grade = "Grade"
    
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                VStack(spacing: 16.0) {
                    
                    TextField("English Marks", text: $eng)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.red)
                        .cornerRadius(10)
                    
                    TextField("Urdu Marks", text: $urdu)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.red)
                        .cornerRadius(10)
                    
                    TextField("Science Marks", text: $science)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.red)
                        .cornerRadius(10)
                    
                    TextField("Math Marks", text: $math)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.red)
                        .cornerRadius(10)
                    
                    TextField("Computer Marks", text: $cs)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.red)
                        .cornerRadius(10)
                    
                    HStack {
                        Button(action: {
                            
                            eng = ""
                            urdu = ""
                            science = ""
                            math = ""
                            cs = ""
                            
                            obtainedMarks = "Obtained Marks"
                            percentage = "Percentage"
                            grade = "Grade"
                        }, label: {
                            Text("Clear")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.red)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        })
                        
                        Button(action: {
                            
                            let om: Int = Int(eng)! + Int(urdu)! + Int(science)! + Int(math)! + Int(cs)!
                            let per: Double = Double(om * 100 / 500)
                            
                            obtainedMarks = "Obtained Marks: \(om)"
                            percentage = "Percentage: \(per)"
                            // grade coming soon
                            
                            grade = "Grade \(decideGrade(percentage: per))"
                            
                        }, label: {
                            Text("Calculate")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        })
                    }
                    
                    Text(obtainedMarks)
                    Text(percentage)
                    Text(grade)
                    
                }
                .padding()
            }
            .navigationTitle("DMC")
        }
    }
    
    func decideGrade( percentage: Double) -> String {
        if percentage >= 80{
            return "A"
        }else if percentage >= 70{
            return "B"
        }else if percentage >= 60{
            return "C"
        }else if percentage >= 40 {
            return "D"
        }else {
            return "Fail"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
