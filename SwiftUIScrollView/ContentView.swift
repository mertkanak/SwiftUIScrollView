//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by mert Kanak on 13.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        Text("Saturday AUG 13")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    
                        Text("Your Reading")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(3)
                    }
                    .padding()
                    HStack {
                        //also can make it with group so we dont need to write frame for every object!!
                        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                            .frame(width: 300)
                        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                            .frame(width: 300)
                        CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                            .frame(width: 300)
                        CardView(image: "natural-language-api", category: "iOS", heading: "What's Newin Natural Language API", author: "Sai Kambampati")
                            .frame(width: 300)
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
