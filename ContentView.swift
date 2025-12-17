//
//  ContentView.swift
//  LOTR Converter APP
//
//  Created by Heitor Rodrigues on 09/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var showSelectCurrency = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    @State var rightCurrency : Currency = .silverPiece
    @State var leftCurrency : Currency = .goldPiece
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
                    //left conversion section
                    VStack {
                        //currency
                        HStack {
                            //currency image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            //currency text
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(Color.white)
                        }
                        .padding(.bottom,-5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
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
                            Text(rightCurrency.name)
                                .foregroundStyle(Color.white)
                                .font(.headline)
                            
                            //currency image
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom,-5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        
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
                    .sheet(isPresented: $showSelectCurrency, ) {
                        SelectCurrency(topCurrency: leftCurrency, downCurrency: rightCurrency)
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
