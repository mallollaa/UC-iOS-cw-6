//
//  ContentView.swift
//  task2week6
//
//  Created by Manal H R Alajmi  on 19/09/2022.
//

import SwiftUI

struct DetailView: View {
    let name: String
    let color: Color
    var body: some View {
        
    
        VStack {
//            Text(color)
//               }
//                   .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//                   .background(Color.green)// Working
//                   .edgesIgnoringSafeArea(.all)
//           }
    }



struct ContentView: View {
    @State var write = ""
    let chooseColor = [Color.black , Color.gray , Color.blue , Color.green]
    @State var selectedColor = Color.clear
    
    var body: some View {
        NavigationView {
            VStack{
                Text("دفتر اليوميات ")
                    .padding()
                Text("اختر اللون المفضل ")
                HStack{
                    ForEach(chooseColor, id: \.self) { color in
                        Circle()
                            .foregroundColor(color)
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                }
                .padding()
                Text("ماذا تريد ان تكتب ؟ ")
                TextField("اكتب هنا" , text: $write)
                
                NavigationLink(destination: DetailView(name: write, color: selectedColor)) {
                    Text("Save")
                }
                
            }
            .font(.largeTitle)
            .navigationTitle(" دفتر اليوميات ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
