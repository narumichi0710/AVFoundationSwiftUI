//
//  ContentView.swift
//  AVFoundationSwiftUI
//
//  Created by Narumichi Kubo on 2023/07/10.
//

import SwiftUI
import PermissionsSwiftUIPhoto
import PermissionsSwiftUICamera
import PermissionsSwiftUIMicrophone

struct ContentView: View {
    @State var isShow: Bool = false
    var body: some View {
        VStack {
            Button {
                isShow.toggle()
            } label: {
                Text("Permission Check")
            }
        }
        .JMAlert(
            showModal: $isShow,
            for: [.photo, .camera, .microphone],
            autoCheckAuthorization: false
        )
    }
}

#Preview {
    ContentView()
}
