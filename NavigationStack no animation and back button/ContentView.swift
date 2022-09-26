//
//  ContentView.swift
//  TextToSpeechIOSTutorial
//
//  Created by Charles Suddens on 30/04/22.
//

import SwiftUI


struct ContentView: View {
    init() {
            UINavigationBar.setAnimationsEnabled(false)
        }

    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: PageTwo()){
                    Text("Go to Page Two")
                }
            }
        }
    }
}

// Hide from page 2 -> page 1
struct PageTwo: View {
    var body: some View {
        VStack {
            NavigationLink(destination: PageThree()){
                Text("Go to Page Three")
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}



struct PageThree: View {
    var body: some View {
        VStack {
            Text("Hello!")
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
