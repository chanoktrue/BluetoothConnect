//
//  ContentView.swift
//  BluetoothApp
//
//  Created by Thongchai Subsaidee on 8/8/2564 BE.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var bluetoothVM = BluetoothViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear{
                bluetoothVM.startCetralManager()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
