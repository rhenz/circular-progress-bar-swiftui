//
//  ContentView.swift
//  CircularProgressBar-SwiftUI
//
//  Created by John Salvador on 7/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var progressValue: Float = 0.0
    
    var body: some View {
        VStack {
            ProgressBar(progress: $progressValue)
                .frame(width: 160, height: 160)
                .padding()
                .onAppear {
                    progressValue = 0.0
                }
            
            Button("Increment") {
                if progressValue < 1.0 {
                    progressValue += 0.10
                } else {
                    progressValue = 0.0
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
