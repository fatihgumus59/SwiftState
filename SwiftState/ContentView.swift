//
//  ContentView.swift
//  SwiftState
//
//  Created by Fatih Gümüş on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var defaultHealthPoints = 5
    
    var body: some View {
        
        VStack{
            
            Text("Character Health")
                .font(.title)
                .bold()
            
            HStack{
               
                if(defaultHealthPoints != 0){
                    ForEach(0..<defaultHealthPoints, id: \.self){ _ in
                 
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    }
                }else if (defaultHealthPoints == 0){
                    Text("ÖLDÜNÜZ!")
                        .foregroundStyle(.red)
                        .font(.title)
                        .bold()
                }
            }

            Button(action: {
                if (defaultHealthPoints != 0) {
                    defaultHealthPoints -= 1
                }
                
            },label: {
              
                Image("character")
                    .resizable()
                    .frame(width: 150,height: 150)
    
            }).padding(.top,20)
            
            
            Button(action: {
                if !(defaultHealthPoints >= 5){
                    defaultHealthPoints += 1
                }else{
                    print("5'den fazla can Olamaz.")
                }
            }
            , label: {
                Text("Can Ver")
                    .foregroundStyle(.white)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 30)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .bold()
                
            }).padding(.top,20)
            
            
        }
    }
}

#Preview {
    ContentView()
}
