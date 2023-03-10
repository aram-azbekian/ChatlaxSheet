//
//  ContentView.swift
//  ChatlaxSheet
//
//  Created by Арам on 06.02.2023.
//

import SwiftUI

struct ContentView: View {
	@State private var isChatlaxSheetPresented = false
	
	var body: some View {
		ZStack {
			TabView {
				ZStack {
					Color.yellow
						.ignoresSafeArea()
					VStack {
						Button {
							isChatlaxSheetPresented.toggle()
						} label: {
							Text("Press")
						}
						Spacer()
					}
				}
				.tabItem { Text("One") }
				Color.green
					.ignoresSafeArea()
					.tabItem { Text("Two") }
				Color.red
					.ignoresSafeArea()
					.tabItem { Text("Three") }
			}
			BottomSheetView(isChatlaxSheetPresented: $isChatlaxSheetPresented)
				.animation(.easeOut(duration: 0.3), value: isChatlaxSheetPresented)
		}
	}
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
