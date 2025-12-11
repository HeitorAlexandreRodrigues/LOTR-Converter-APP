import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea(edges: .all)
                .background(Color.brown)
            //parchment background image
            VStack {
                //text
                Text("Select the currency you are starting with :")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                //currency icons
                CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny" )
                 
                //text
                Text("Select the currency you would like to convert to : ")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                //currency icons
                
                //done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                
            }
            .padding()
        }
    }
}

#Preview {
    SelectCurrency()
}



