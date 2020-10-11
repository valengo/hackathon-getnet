//
//  ExchangeFeedView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct ExchangeFeedView: View {
    
    @State private var textField: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Search", text: $textField)
                    Image(systemName: "mic.fill")
                }
                .padding([.leading, .trailing, .top])
                
                ServicesTypeView()
                    .padding(.leading)
                ServicesListView()
            }
            .navigationBarTitle("Troca de serviços", displayMode: .inline)
            
            .navigationBarItems(leading:
                                    Button(action: {}, label: {
                                        Image(systemName: "plus")
                                    }),
                                trailing:
                                    Button(action: {}, label: {
                                        Image(systemName: "bell")
                                    })
            )
            
            
        }
        .accentColor(.ourRed)
        
    }
    
}

struct ExchangeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeFeedView()
    }
}
