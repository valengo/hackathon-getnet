//
//  OrderInfoView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct OrderInfoView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Pedido confirmado!")
                .font(.system(size: 25, weight: .bold))
                .padding(.bottom, 20)
            Text("Seu pagamento foi aprovado e seu pedido está confirmado. Você pode ver o andamento de sua compra ou cancelá-la a qualquer momento em:")
                .font(.system(size: 20))
                .padding(.bottom, 40)
            HStack {
                Spacer()
                Image("Perfil")
                    .resizable()
                    .frame(width: 29, height: 40)
                Image("Arrow")
                    .resizable()
                    .frame(width: 5, height: 10)
                Image("ShoppingCart")
                    .resizable()
                    .frame(width: 17, height: 15)
                Text("Ver minhas compras coletivas")
                Spacer()
            }
            .frame(alignment: .center)
            .padding(.bottom, 40)
            

            Text("Você será notificado quando a oferta bater a meta de produtos adquiridos e quando chegar ao local marcado.")
            Text("Não esqueça de guardar seu comprovante, você precisará dele para recolher sua mercadoria.")
            
            
        }
        
    }
}

struct OrderInfoView_Previews: PreviewProvider {
    static var previews: some View {
        OrderInfoView()
    }
}
