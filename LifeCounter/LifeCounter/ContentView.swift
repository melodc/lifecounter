//
//  ContentView.swift
//  LifeCounter
//
//  Created by Melody Chou on 4/20/21.
//

import SwiftUI

struct ContentView: View {
    @State var p1count: Int = 1
    @State var p2count: Int = 1
    @State var p3count: Int = 1
    @State var p4count: Int = 1

    var body: some View {
        VStack {
            Text("Life Counter")
                .font(.title).padding()
            
            VStack {
                Text(p1count > 1 || p1count == 0 ? "Player 1: \(p1count) lives" : "Player 1: \(p1count) life")
                    .font(.title).padding()
                
                HStack {
                    Button(action: {
                        self.p1count -= 5
                    }) {
                        Text("-5")
                    }
                    .buttonStyle(BlueButton())
                    
                    Button(action: {
                        self.p1count -= 1
                    }) {
                        Text("-1")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p1count += 1
                    }) {
                        Text("+1")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p1count += 5
                    }) {
                        Text("+5")
                    }
                    .buttonStyle(BlueButton())

                }
            }
            .padding()
            
            VStack {
                Text(p2count > 1 || p2count == 0 ? "Player 2: \(p2count) lives" : "Player 2: \(p2count) life")
                    .font(.title).padding()
                
                HStack {
                    Button(action: {
                        self.p2count -= 5
                    }) {
                        Text("-5")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p2count -= 1
                    }) {
                        Text("-1")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p2count += 1
                    }) {
                        Text("+1")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p2count += 5
                    }) {
                        Text("+5")
                    }
                    .buttonStyle(BlueButton())

                }
                
            }
            .padding()
            
            VStack {
                Text(p3count > 1 || p3count == 0 ? "Player 3: \(p3count) lives" : "Player 3: \(p3count) life")
                    .font(.title).padding()
                
                HStack {
                    Button(action: {
                        self.p3count -= 5
                    }) {
                        Text("-5")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p3count -= 1
                    }) {
                        Text("-1")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p3count += 1
                    }) {
                        Text("+1")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p3count += 5
                    }) {
                        Text("+5")
                    }
                    .buttonStyle(BlueButton())

                }
            }
            .padding()
            
            VStack {
                Text(p4count > 1 || p4count == 0 ? "Player 4: \(p4count) lives" : "Player 4: \(p4count) life")
                    .font(.title).padding()
                
                HStack {
                    Button(action: {
                        self.p4count -= 5
                    }) {
                        Text("-5")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p4count -= 1
                    }) {
                        Text("-1")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p4count += 1
                    }) {
                        Text("+1")
                    }
                    .buttonStyle(BlueButton())

                    Button(action: {
                        self.p4count += 5
                    }) {
                        Text("+5")
                    }
                    .buttonStyle(BlueButton())

                }
            }
            .padding()
        }
        
        
        
        Group {
           
        }
        
    }
}

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.2))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
