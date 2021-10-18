//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Tomas Havlicek on 18.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Button clicked!")
            }) {
                HStack {
                    Image(systemName: "hand.tap")
                    Text("Click Me")
                }
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .font(.title)
                .cornerRadius(10)
                .shadow(radius: 5.0)
            }
            
            Button(action: {
                print("Button clicked!")
            }) {
                HStack {
                    Image(systemName: "hand.tap")
                    Text("Click Me")
                }
                .padding()
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .font(.title)
                .cornerRadius(10)
            }
            
            Button(action: {
                print("Button clicked!")
            }) {
                Label(
                    title: {
                        Text("Click Me")
                    },
                    icon: {
                        Image(systemName: "hand.tap")
                })
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .font(.title)
                .cornerRadius(10)
            }
            
            Button(action: {
                print("Button clicked!")
            }) {
                HStack {
                    Image(systemName: "hand.tap")
                    Text("Click Me")
                        .fontWeight(.bold)
                }
                .padding()
                .font(.title)
                .foregroundColor(.purple)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.purple, lineWidth: 5))
            }
            
            // border modifier doesnt support corner readius
            Button(action: {
                print("Button clicked!")
            }) {
                HStack {
                    Image(systemName: "hand.tap")
                    Text("Click Me")
                        .fontWeight(.bold)
                }
                .cornerRadius(10)
                .padding()
                .foregroundColor(.purple)
                .font(.title)
                .border(Color.purple, width: 5)
            }
            
            Button(action: {
                print("Button clicked!")
            }) {
                HStack {
                    Image(systemName: "hand.tap")
                    Text("Click Me")
                }
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .font(.title)
                .padding(10)
                .border(Color.purple, width: 5)
            }
            
            Button(action: {
                print("Button clicked!")
            }) {
                HStack {
                    Image(systemName: "hand.tap")
                    Text("Click Me")
                        .fontWeight(.bold)
                        
                }
                .font(.title)
                .padding()
                .background(Color.purple)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5))
            }
            
            HStack {
                Button(action: {
                    print("Button clicked!")
                }) {
                    Image(systemName: "hand.tap")
                }
                .buttonStyle(ImageButtonStyle())
                
                Button(action: {
                    print("Button clicked!")
                }) {
                    Image(systemName: "plus")
                }
                .buttonStyle(ImageButtonStyle())
            }
            
            Spacer()
            
            Button(action: {
                print("Button clicked!")
            })
            {
                Label(
                    title: {
                        Text("Click Me")
                    },
                    icon: {
                        Image(systemName: "hand.tap")
                    }
                )
            }
            .buttonStyle(PurpleButtonStyle())
        }
    }
}

struct PurpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(40)
            .padding(.horizontal, 10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

struct ImageButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(10)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10.0, x: 20, y: 10)
            .rotationEffect(configuration.isPressed ? .degrees(45) : .degrees(0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
