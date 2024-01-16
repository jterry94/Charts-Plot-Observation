//
//  Charts_Plot_ObservationApp.swift
//  Charts Plot Observation
//
//  Created by Jeff_Terry on 1/15/24.
//

import SwiftUI
import Observation

@main
struct Charts_Plot_ObservationApp: App {
    
    @State var plotData = PlotClass()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .environment(plotData)
                    .tabItem {
                        Text("Plot")
                    }
                TextView()
                    .environment(plotData)
                    .tabItem {
                        Text("Text")
                    }
                            
                            
            }
            
        }
    }
}
