//
//  ShapesView.swift
//  SwiftLearning
//
//  Created by Joseph DeWeese on 3/29/22.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
      //  Circle()
       // Ellipse()
      //  Rectangle()
        RoundedRectangle(cornerRadius: 50)
       // Capsule(style: .circular)
            .frame(width: 200, height: 100, alignment: .center)
        //    .fill(.blue)
       //     .stroke(Color.red)
        //    .stroke(Color.red, lineWidth: 25.0)
        //    .scaledToFit()
        //    .padding()
         //   .stroke(Color.blue, style: StrokeStyle(lineWidth: 25, lineCap: .butt, dash: [10]))
          //  .trim(from: 0.2, to: 1.0)
        //    .stroke(Color.purple, lineWidth: 50)
        
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
