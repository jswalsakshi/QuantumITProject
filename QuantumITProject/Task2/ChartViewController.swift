//
//  ChartViewController.swift
//  QuantumITProject
//
//  Created by Sakshi Jaiswal on 30/05/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import UIKit
import Highcharts

class ChartViewController: UIViewController {
    
    @IBOutlet weak var chartView: HIChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpChartUI()
    }
    
    func setUpChartUI() {
        let chartView = HIChartView(frame: view.bounds)
        chartView.sizeToFit()
        let options = HIOptions()
        let chart = HIChart()
        let title = HITitle()
        title.text = "Aggresive*"
        title.align = "center"
        title.verticalAlign = "middle"
        title.y =  80
        
        let tooltip = HITooltip()
        tooltip.pointFormat = "{point.percentage:.1f}%"
        
        let plotoptions = HIPlotOptions()
        plotoptions.pie = HIPie()
        plotoptions.pie.startAngle =  -90
        plotoptions.pie.endAngle =  90
        plotoptions.pie.center = ["50%", "75%"]
        plotoptions.pie.size = 230
        
        let pie = HIPie()
        pie.innerSize = "50%"
        pie.data = [
            ["Risk Assesment", 65.0],
            ["Risk Assesment", 35.0]
        ]
        
        options.chart = chart
        options.title = title
        options.tooltip = tooltip
        options.plotOptions = plotoptions
        options.series = [pie]
        
        chartView.options = options
        chartView.frame = self.chartView.bounds
        self.chartView.addSubview(chartView)
        }
    
    
    @IBAction func actionCloseView(_ sender: Any) {
        self.dismiss(animated: true) {
            
        }
    }
    
    @IBAction func actionBackButtonPressed(_ sender: Any) {
        self.dismiss(animated: true) {
            
        }
    }
}
