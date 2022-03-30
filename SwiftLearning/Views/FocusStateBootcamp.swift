//
//  FocusStateBootcamp.swift
//  SwiftLearning
//
//  Created by Joseph DeWeese on 3/30/22.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField {
        case username
        case userlastname
        
    }
    @State private var username: String = ""
    @State private var userlastname: String = ""
//    @FocusState private var usernameInFocus: Bool
//    @FocusState private var userlastnameInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            TextField("Add your name...", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.05).foregroundColor(.brown))
                .cornerRadius(10)
                .foregroundColor(.black)
            
            SecureField("Add your  Last name...", text: $userlastname)
                .focused($fieldInFocus, equals: .userlastname)
//                .focused($userlastnameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.05))
                .cornerRadius(10)
                .foregroundColor(.black)
            
            Button("Sign Up〽️") {
                let   usernameIsValid = !username.isEmpty
                let userlastnameIsValid = !userlastname.isEmpty
                if usernameIsValid && userlastnameIsValid {
                    print("sign up")
                }else if usernameIsValid {
                    fieldInFocus = .userlastname
//                    usernameInFocus = false
//                    userlastnameInFocus = true
                }else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    userlastnameInFocus = false
            }
            
        }
        .padding()
   //     .onAppear {
  //          DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
     //           self.userlastnameInFocus = true//this handy little snippet of code will auto bring up keyboard and cue up the textfiled with a blinking cursor.  user would not have to touch the field.
            }
        }
}
struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}

