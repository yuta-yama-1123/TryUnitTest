//
//  ContentView.swift
//  TryUnitTest
//
//  Created by 山本祐太 on 2022/09/11.
//

import SwiftUI

struct ContentView: View {
  @State private var buttonTitle = "Hello"
  var body: some View {
    Text(buttonTitle)
      .accessibility(identifier: "TestText")
    Button(buttonTitle) {
      buttonTitle = "World"
    }
    .accessibility(identifier: "TestButton")
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
