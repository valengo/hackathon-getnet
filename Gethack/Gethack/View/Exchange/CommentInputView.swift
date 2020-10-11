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
            Spacer()
            TextField("Deixe seu comentário aqui", text: $textField)
            Spacer()
            NavigationLink(
                destination: ProposalSentView(),
                label: {
                    Image("EnviarProposta")
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
