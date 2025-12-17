import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency: Currency
    @State var downCurrency: Currency
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
                    .padding()
                //currency icons
                IconGrid(selectedCurrency: topCurrency)
                //text
                Text("Select the currency you would like to convert to : ")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                //currency icons
                IconGrid(selectedCurrency: downCurrency)

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
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    SelectCurrency( topCurrency: .silverPenny, downCurrency: .goldPenny)
}



