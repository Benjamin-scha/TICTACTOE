//
//  ContentView.swift
//  ThebestTicTacToe
//
//  Created by P.M. Student on 1/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            NavigationView{
                Home().navigationTitle("game")
            
            }
            
            
            //HashView(legnth: 500.0, width: 5, space1: 20,space2: 20)
            
        }
    }
}

struct Home:View {
    var body: some View{
    
        VStack{
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 3 ), spacing:15){
            
                ForEach(0..<9, id:\.self){
                    index in
                    Color.green
                        .frame(width: getwidth(), height: getwidth())
                        .cornerRadius(10)
                }
            }
            .padding()
    
        }
    }
    //used to calculate width
    func getwidth() -> CGFloat{
        let width = UIScreen.main.bounds.width - (30 + 30)
        
        return width / 3
    }
    
    
}

struct HashView: View {
    
    var legnth : Double
    var width:Double
    var space1: Double
    var space2: Double
    
    var body: some View {
        ZStack{
            Rectangle().size(CGSize(width: legnth, height: width)).offset(CGSize(width: 20.0, height: 20.0))
            Rectangle().size(CGSize(width: legnth, height: width)).offset(CGSize(width: 20.0, height: 20.0))
            Rectangle().size(CGSize(width: width, height: legnth)).offset(CGSize(width: 20.0, height: 20.0))
            Rectangle().size(CGSize(width: width, height: legnth)).offset(CGSize(width: 20.0, height: 20.0))
            
        }
        
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

