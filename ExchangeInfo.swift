//
//  ExchangeInfo.swift
//  LOTR Converter APP
//
//  Created by Heitor Rodrigues on 11/12/25.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            //background parchment
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                //tittle text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2)
                
                //description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                    
                     

                
                //Exchange rates
                HStack {
                    //leftCurrencyImage
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    //exchangeRateText
                    Text("1 Gold Piece = 4 gold Pennies")
                    
                    //rightCurrencyImage
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
                
                //done button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
