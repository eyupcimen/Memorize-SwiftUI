//
//  ContentView.swift
//  Memorize-SwiftUI
//
//  Created by eyup cimen on 23.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .stroke(lineWidth: 3.0)
                Text("Hello World!")
                    .padding()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .stroke(lineWidth: 3.0)
                Text("Hello World!")
                    .padding()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .stroke(lineWidth: 3.0)
                Text("Hello World!")
                    .padding()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .stroke(lineWidth: 3.0)
                Text("Hello World!")
                    .padding()
            }
        }
            .padding(.horizontal)
            .foregroundColor(.orange)
            
            //NavigationView {
            //.navigationTitle(Text("Standford SwiftUI"))
            //.navigationBarTitleDisplayMode(.large)
      
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// .edgesIgnoringSafeArea(.bottom)
//Button("Show Menu") {
//    showingPopover = true
//}
//.popover(isPresented: $showingPopover) {
//    VStack {
//        Section{
//            Text("Your content here")
//                .font(.headline)
//                .padding()
//            Text("Your content here")
//                .font(.headline)
//                .padding()
//        }
//
//    }
//
//}
