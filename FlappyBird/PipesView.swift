//
//  PipesView.swift
//  FlappyBird
//
//  Created by Vladimir Liubarskiy on 29/07/2024.
//

import SwiftUI

struct PipesView: View {
    let topPipeHeight: Double
    let pipeWight: Double
    let pipeSpacing: Double
    
    var body: some View {
        // Up pipe
        GeometryReader { geometry in
            VStack {
                Image(.flappeBirdPipe)
                    .resizable()
                    .rotationEffect(.degrees(180))
                .frame(width: pipeWight, height: topPipeHeight)
                //Spacing between pipes
                Spacer(minLength: pipeSpacing)
                // Down pipe
                Image(.flappeBirdPipe)
                    .resizable()
                    .frame(
                        width: pipeWight,
                        height: geometry.size.height - topPipeHeight  - pipeSpacing
                    )
            }
        }
        
            
    }
}

#Preview {
    PipesView(topPipeHeight: 300, pipeWight: 100, pipeSpacing: 100)
}
