//
//  ContentView.swift
//  practice
//
//  Created by Benjamin Rojo on 29/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            TaskListView()
            ScrollView {
                LazyVStack {
                    ForEach(1...1000, id: \.self) { num in
                        Text("Item \(num)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.purple.opacity(0.2))
                            .cornerRadius(10)
                    }
                }
            }
        }
        .padding()
    }
}
struct TaskListView: View {
    let tasks = ["Do laundry", "Buy groceries", "Finish project"]

    var body: some View {
        List(tasks, id: \.self) { task in
            HStack {
                Text(task)
                
                Spacer()  // Empuja el botón a la derecha

                Button(action: {
                    print("\(task) completed!")
                }) {
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(.green)
                }
            }
            .padding(.vertical, 8)
        }
    }
}

#Preview {
    ContentView()
}
