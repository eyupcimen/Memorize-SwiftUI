//
//  ContentView.swift
//  Memorize-SwiftUI
//
//  Created by eyup cimen on 23.02.2021.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚲","🚂","🚀","🚁","🚜" ,"🚗","🚕","🚙" ,"🚌","🚎","🏎","🚓","🚑","🚒","🚐","🛻","🚚","🚛","🛴","🛵","🛺","🚔","🚍","🚘","🚖","🚡","🚠","🚟","🚃","🚋","🚞","🚝","🚄","🚅","🚈","🚆","🚇","🚊","🚉","✈️","🛫","🛬","🛩","💺","🛰","🛸","🛶","⛵️","🚤","🛥","🛳","⛴","🚢"]
    @State var emojiCount = 4
    var body: some View {
        VStack{
            HStack{
                ForEach(emojis[0..<emojiCount] , id: \.self ,content: { emoji in
                    CardView(content: emoji)
                })
            }
            HStack{
                Button(action: {
                    emojiCount -= 1
                }, label: {
                    VStack{
                        Text("Remove")
                        Text("Card")
                    }
                })
//                Spacer()
//                Text("Shuffle").font(.body)
                Spacer()
                Button(action: {
                    emojiCount += 1
                }, label: {
                    VStack{
                        Text("Add")
                        Text("Card")
                    }
                })
            }
            .padding(.horizontal)
        }
        
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

struct CardView : View {
    var content : String
    @State var isFaceUp : Bool = true
    
    var body : some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
                shape
                    .fill().foregroundColor(.white)
                shape
                    .stroke(lineWidth: 3.0)
                Text(content)
                    .font(.largeTitle)
            } else {
                
                shape.fill()
                
            }
        }
        .onTapGesture {
            print("Success!!")
            isFaceUp = !isFaceUp
        }
    }
}
//let shape = Circle()


//NavigationView {
//.navigationTitle(Text("Standford SwiftUI"))
//.navigationBarTitleDisplayMode(.large)


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


//extension Text {
//
//    @inlinable public func addModif() -> some View {
//        self.accentColor(.red)
//    }
//
//}
