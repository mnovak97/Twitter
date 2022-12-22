//
//  CustomTextView.swift
//  Twitter
//
//  Created by Martin Novak on 06.06.2022..
//

import SwiftUI

struct CustomTextView: View {
    var imagename:String
    var labelText:String
    var isSecuredField: Bool? = false
    @Binding var text:String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imagename)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if isSecuredField ?? false {
                    SecureField(labelText, text: $text)
                } else {
                    TextField(labelText, text: $text)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomTextView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextView(imagename: "envelope", labelText: "Email", isSecuredField: false, text: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}
