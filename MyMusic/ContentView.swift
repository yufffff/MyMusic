//
//  ContentView.swift
//  MyMusic
//
//  Created by 深井裕貴 on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack {
            Image("background")
                // リサイズする
                .resizable()
                // 画面いっぱいになるようにセーフエリア外まで表示
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                // アスペクト比を維持
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            HStack {
                Button(action: {
                    soundPlayer.cymbalPlay()
                }) {
                    ButtonImageView(imageName: "cymbal")
                }
                Button(action: {
                    soundPlayer.guitarPlay()
                }) {
                    ButtonImageView(imageName: "guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
