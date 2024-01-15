//
//  PlotDataClass.swift
//  Test Plot Threaded Charts
//
//  Created by Jeff Terry on 8/25/22.
//

import Foundation
import SwiftUI
import Observation

@Observable class PlotDataClass {
    
    @MainActor var plotData = [PlotDataStruct]()
    @MainActor var changingPlotParameters: ChangingPlotParameters = ChangingPlotParameters()
    @MainActor var calculatedText = ""
    //In case you want to plot vs point number
    @MainActor var pointNumber = 1.0
    
    init(fromLine line: Bool) {
        
        
        //Must call super init before initializing plot
        //super.init()
       
        Task{
            //Intitialize the first plot
            await self.plotBlank()
            
        }
        
       }
    
    
    
    @MainActor func plotBlank()
    {
        zeroData()
        
        //set the Plot Parameters
        changingPlotParameters.yMax = 4.0
        changingPlotParameters.yMin = -1.0
        changingPlotParameters.xMax = 4.0
        changingPlotParameters.xMin = -1.0
        changingPlotParameters.xLabel = "x"
        changingPlotParameters.yLabel = "y"
        changingPlotParameters.lineColor = Color.red
        changingPlotParameters.title = "y = x"
        
        
        
    }
    
    @MainActor func zeroData(){
            
            plotData = []
            pointNumber = 1.0
            
        }
        
    @MainActor func appendData(dataPoint: [(x: Double, y: Double)])
        {
          
            for item in dataPoint{
                
                let dataValue :[PlotDataStruct] =  [.init(xVal: item.x, yVal: item.y)]
                
                plotData.append(contentsOf: dataValue)
                pointNumber += 1.0
                
            }
            
        }
    
    

}
