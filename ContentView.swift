//
//  ContentView.swift
//  LOTR Converter APP
//
//  Created by Heitor Rodrigues on 09/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
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
                        .padding(.bottom,-5)
                        //text field
                        TextField("Amount :", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
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
                        .padding(.bottom,-5)
                        TextField("Amount : ", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                //info button
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfo()
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
