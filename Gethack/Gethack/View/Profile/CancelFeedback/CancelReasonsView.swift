//
//  CancelReasonsView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CancelReasonsView: View {
    
    @State private var changeImage1 = false
    @State private var changeImage2 = false
    @State private var changeImage3 = false
    @State private var changeImage4 = false
    
    var body: some View {
        VStack(alignment: .center) {
            
            Button(action: {
                self.changeImage1.toggle()
            }, label: {
                if self.changeImage1 {
                    Image("Opc1")
                } else {
                    Image("Opcao1")
                }
            })
            .padding(.bottom, 20)
            
            Button(action: {
                self.changeImage2.toggle()
            }, label: {
                if self.changeImage2 {
                    Image("Opc2")
                } else {
                    Image("Opcao2")
                }
            })
            .padding(.bottom, 20)
            
            Button(action: {
                self.changeImage3.toggle()
            }, label: {
                if self.changeImage3 {
                    Image("Opc3")
                } else {
                    Image("Opcao3")
                }
            })
            .padding(.bottom, 20)
            
            Button(action: {
                self.changeImage4.toggle()
            }, label: {
                if self.changeImage4 {
                    Image("Opc4")
                } else {
                    Image("Opcao4")
                }
            })
            .padding(.bottom, 20)
            
        }
    }
}

struct CancelReasonsView_Previews: PreviewProvider {
    static var previews: some View {
        CancelReasonsView()
    }
}
