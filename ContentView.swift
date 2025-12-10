//
//  ContentView.swift
//  LOTR Converter APP
//
//  Created by Heitor Rodrigues on 09/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    var body: some View {
        ZStack {
            //background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                //prancing Ponny image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                //currency exchange text
                Text("Currency exchange")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    
                
                //conversion section
                HStack {
                    //;eft conversion section
                    VStack {
                        //currency
                        HStack {
                            //currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            //currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(Color.white)
                        }
                        //text field
                        Text("Text field")
                            .foregroundStyle(.pink)
                    }
                    //equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    //right conversion section
                    VStack {
                        //currency
                        HStack {
                            //currency text
                            Text("Gold Piece")
                                .foregroundStyle(Color.white)
                                .font(.headline)
                            
                            //currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        Text("Text field")
                            .foregroundStyle(Color.pink)
                    }
                }
                //info button
                Spacer()
                Button {    
                    showExchangeInfo = true
                } label: {
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
