//
//  GoalAchievedView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct GoalAchievedView: View {
    var body: some View {
        VStack {
            Image("Achievement")
                .frame(alignment: .center)
            Text("Meta alcançada!")
                .font(.system(size: 25, weight: .bold))
            Text("Sua compra alcançou a meta de produtos adquiridos e será enviada pelo fornecedor em até 3 dias úteis!")
            Text("Você será avisado quando a mercadoria chegar")
                .bold()
            
            ProductAchievedView()
        }
    }
}

struct GoalAchievedView_Previews: PreviewProvider {
    static var previews: some View {
        GoalAchievedView()
    }
}
