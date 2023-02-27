//
//  PalaceUIView.swift
//  Popmundo
//
//  Created by İbrahım Arda Arslan on 26.02.2023.
//

import SwiftUI

struct PalaceUIView: View {
    //@Binding var tabBarHeight: CGFloat
    @State private var isPickerVisible = false
    @State private var selectedOption = 0

    var body: some View {
        ScrollView {
            /// PROFILE
            VStack() {
                Image("housePhoto")
                    .resizable()
                    .frame(width: 230, height: 260)
                    .cornerRadius(16)
                    .padding()
                    .onTapGesture {
                        isPickerVisible = true
                    }

                Text("Name :")
                    .font(.system(size: 20))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Eşyalar :")
                    .font(.system(size: 20))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)

                HStack {
                    ForEach(0..<5) { index in
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Text("B\(index + 1)")
                        }
                    }
                }

                Text("Kalite :")
                    .font(.system(size: 20))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Mekandakiler :")
                    .font(.system(size: 20))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width * 0.85)
            .background(Color.gray)
            .cornerRadius(16)

            if isPickerVisible {
                Picker(selection: $selectedOption, label: Text("Options")) {
                    Text("Option 1").tag(0)
                    Text("Option 2").tag(1)
                    Text("Option 3").tag(2)
                }
                .pickerStyle(.wheel)
                .background(Color.white.opacity(0.5))
                .frame(height: 150)
                .offset(y: -100)
                .onTapGesture {
                    isPickerVisible = false
                }
                .transition(.move(edge: .bottom))
            }

        }

    }
}

struct PalaceUIView_Previews: PreviewProvider {
    static var previews: some View {
        PalaceUIView()
    }
}
