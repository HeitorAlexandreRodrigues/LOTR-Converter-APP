import SwiftUI

struct ExtractedRate: View {
    let leftImage : ImageResource
    let text : String
    let rightImage : ImageResource
    var body: some View {
        HStack {
            //leftCurrencyImage
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //exchangeRateText
            Text(text)
            
            //rightCurrencyImage
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExtractedRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}



