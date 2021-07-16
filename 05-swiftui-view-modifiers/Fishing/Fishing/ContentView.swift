//
//  ContentView.swift
//  Fishing
//
//  Created by Zzr on 2021/7/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎣🎣🎣\n让鱼竿尽可能接近鱼")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89米")
            HStack {
                Text("1米")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100米")
            }
            Button(action: {}) {
                Text("点我")
            }
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
