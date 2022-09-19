//
//  ContentView.swift
//  task6
//
//  Created by Manal H R Alajmi  on 19/09/2022.
//

import SwiftUI
struct StudentsDetails: Identifiable {
    let id = UUID()
    let FullName: String
    let Year: String
    let Age: String
}
struct ContentView: View {
    @State var students = [
        StudentsDetails(FullName:"ساره فهد  ", Year:"2",Age:"20" ),
        StudentsDetails(FullName:  "نوره محمد", Year: "4" ,Age:"22" ),
        StudentsDetails(FullName:" راشد علي ", Year: "1",Age:"18" )
    ]
    
    var body: some View {
        VStack{
        Image("idpng")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
           Text("سجل الطلبه ")
                .bold()
                .font(.largeTitle)
                .padding()
            ForEach(students) { student in
                VStack {
                    Text("الاسم الكامل :\(student.FullName)")
                    Text("السنه الدراسيه : \(student.Year)")
                    Text("العمر \(student.Age)")
                        .font(.caption)
                    Divider()

                        
                    
                 
                    
                }
            }
            
            //Text("number of students ")
        
            Text("عدد الطلبه المسجلين : \(students.count)")
                .foregroundColor(.green)
                .background(.yellow)
            
            
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
