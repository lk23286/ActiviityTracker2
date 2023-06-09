//
//  ArcView.swift
//  ActiviityTracker2
//
//  Created by Laszlo Kovacs on 2023. 04. 12..
//

import SwiftUI

struct ArcView: View {
    
    var achivement: Int
    var archTheme: ArcTheme

    var body: some View {
        
        DiagramArc(number: archTheme.arcNumber, percent: 100)
            .stroke(archTheme.darkColor, lineWidth: 22)
            .brightness(0.0)
           
            .overlay {
                DiagramArc(number: archTheme.arcNumber, percent: achivement)
                    .rotation(Angle(degrees: -90))
                    .stroke(archTheme.lightColor, lineWidth: 22)
            }
    }
}

struct ArcView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        var arcTheme: ArcTheme = ArcTheme.sample[0]
        ArcView( achivement: 30, archTheme: arcTheme)
    }
}
