//
//  TextView.swift
//  SwiftLearning
//
//  Created by Joseph DeWeese on 3/29/22.
//

import SwiftUI

struct AddingText: View {
    var body: some View {
        Text("Hello world!   just creating shorcut reminders of key functions and methods and libraries, etc")
            .font(.body)
                .bold()
                .underline()
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
                .font(.system(size: 24, weight: .semibold, design: .serif))
        //using value for size will not automatically resize on all phones and tablets based upon size and their respective screen view zoom level.  the above characteristics will, but not a numbered value.  Try to avoid where possible
                .kerning(10)
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
                .frame(width:300, height: 500, alignment: .center)
                .minimumScaleFactor(0.1)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
    AddingText()
    }
}
