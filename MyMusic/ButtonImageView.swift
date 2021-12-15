//
//  ButtonImageView.swift
//  MyMusic
//
//  Created by 深井裕貴 on 2021/07/19.
//

import SwiftUI

struct ButtonImageView: View {
    // 画像ファイル名
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
    }
}

struct ButtonImageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImageView(imageName: "cymbal")
    }
}
