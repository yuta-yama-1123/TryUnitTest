//
//  ContentView.swift
//  TryUnitTest
//
//  Created by 山本祐太 on 2022/09/11.
//

import SwiftUI

struct ContentView: View {
  @State private var buttonTitle = "Hello"
  @State private var textEditTest = ""
  @State private var textEditTest2 = ""
  var body: some View {
    VStack {
      HStack {
        Text("TEXT_1:")
          .padding()
        Text(buttonTitle)
          .accessibility(identifier: "TestText")
          .padding()
      }
      HStack {
        Text("TEXT_2:")
          .padding()
        Text(textEditTest2)
          .accessibility(identifier: "TestText2")
          .padding()
      }
      TextField(
        "testTextField",
        text: $textEditTest
      )
        .accessibility(identifier: "TestTextField")
        .frame(width: 200)
      Button(buttonTitle) {
        buttonTitle = "World"
        textEditTest2 = textEditTest
      }
        .accessibility(identifier: "TestButton")
        .padding()
    }
    .frame(
      width: 600,
      height: 600)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
