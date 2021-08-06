//
//  ContentView.swift
//  Fishing
//
//  Created by Zzr on 2021/7/10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    @State private var prizeIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("🎣🎣🎣\n让鱼竿尽可能接近鱼")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89米")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1米")
                    .bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100米")
                    .bold()
            }
            Button(action: {
                print("你好，SwiftUI")
                self.alertIsVisible = true
            }) {
                Text("点我")
            }
            .alert(isPresented: $alertIsVisible, content: {
                return Alert(title: Text("你好呀！"), message: Text("这是我的第一个弹窗"), dismissButton: .default(Text("真棒！")))
            })
            Button(action: {
                self.prizeIsVisible = true
            }) {
                Text("敲金蛋")
            }
            .alert(isPresented: $prizeIsVisible, content: {
                return Alert(title: Text("恭喜，您的奖品是"), message: Text("太阳能手电筒"), dismissButton: .default(Text("欧耶")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 926, height: 428))
    }
}
