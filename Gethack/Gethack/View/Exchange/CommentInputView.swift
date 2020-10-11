//
//  CommentInputView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CommentInputView: View {
    
    @State private var textField: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Quer deixar algum comentário?")
                .font(.system(size: 25, weight: .bold))
                .padding(.bottom, 180)
            TextField("Deixe seu comentário aqui", text: $textField)
            Spacer()
            NavigationLink(
                destination: ProposalSentView(),
                label: {
                    Spacer()
                    Image("EnviarProposta")
                    Spacer()
                })
        }
        .padding()
    }
}

struct CommentInputView_Previews: PreviewProvider {
    static var previews: some View {
        CommentInputView()
    }
}
