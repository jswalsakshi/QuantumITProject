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
//        let frame = CGRect(x: 0, y: 0, width: self.chartView.frame.width , height: self.chartView.frame.height )
        let chartView = HIChartView(frame: view.bounds)
        chartView.sizeToFit()
        
        let options = HIOptions()
        
        let chart = HIChart()
        //chart.plotBackgroundColor = HIColor()
        //chart.borderColor = UIColor.clear
        //chart.plotBorderWidth = (value: 0)
      //  chart.plotShadow = NSNumber(value: false)
        
        let title = HITitle()
        title.text = "Aggresive*"
        title.align = "center"
        title.verticalAlign = "middle"
        title.y =  80
        
        let tooltip = HITooltip()
        tooltip.pointFormat = "{point.percentage:.1f}%"
        
        let plotoptions = HIPlotOptions()
        plotoptions.pie = HIPie()
//        plotoptions.pie.dataLabels = HIDataLabels()
//        plotoptions.pie.dataLabels.enabled = NSNumber(value: true)
//        plotoptions.pie.dataLabels.style.color = "white"
//        plotoptions.pie.dataLabels.style.fontWeight() = "bold"
//        plotoptions.pie.dataLabels.style.textOutline = "0px 1px 2px black"
        plotoptions.pie.startAngle =  -90
        plotoptions.pie.endAngle =  90
        plotoptions.pie.center = ["50%", "75%"]
        plotoptions.pie.size = 300
        
        let pie = HIPie()
        //let data = HIData()
       // data.name = "Proprietary or Undetectable"
       // data.y =  0.2
//        data.dataLabels = [
//            "enabled": NSNumber(value: false)
//        ]
       // pie.name = "Browser share"
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

//
//class ViewController {
//    func viewDidLoad() {
//        super.viewDidLoad()
//
//        let chartView = HIChartView(frame: view.bounds)
//
//        let options = HIOptions()
//
//        let chart = HIChart()
//        chart.plotBackgroundColor = HIColor()
//        chart.plotBorderWidth = NSNumber(value: 0)
//        chart.plotShadow = NSNumber(value: false)
//
//        var title = HITitle()
//        title.text = "Browser<br>shares<br>2015"
//        title.align = "center"
//        title.verticalAlign = "middle"
//        title.y = NSNumber(value: 40)
//
//        let tooltip = HITooltip()
//        tooltip.pointFormat = "{series.name}: <b>{point.percentage:.1f}%</b>"
//
//        let plotoptions = HIPlotOptions()
//        plotoptions.pie = HIPie()
//        plotoptions.pie.dataLabels = HIDataLabels()
//        plotoptions.pie.dataLabels.enabled = NSNumber(value: true)
//plotoptions.pie.dataLabels.style.color = "white"
//plotoptions.pie.dataLabels.style.fontWeight() = "bold"
//plotoptions.pie.dataLabels.style.textOutline = "0px 1px 2px black"
//plotoptions.pie.startAngle = NSNumber(value: -90)
//plotoptions.pie.endAngle = NSNumber(value: 90)
//plotoptions.pie.center = ["50%", "75%"]
//
//let pie = HIPie()
//var data = HIData()
//data.name = "Proprietary or Undetectable"
//data.y = NSNumber(value: 0.2)
//data.dataLabels = [
//"enabled": NSNumber(value: false)
//]
//pie.name = "Browser share"
//pie.innerSize = "50%"
//pie.data = [
//["Firefox", NSNumber(value: 10.38)],
//["IE", NSNumber(value: 56.33)],
//["Chrome", NSNumber(value: 24.03)],
//["Safari", NSNumber(value: 4.77)],
//["Opera", NSNumber(value: 0.91)],
//data
//]
//
//options.chart = chart
//options.title = title
//options.tooltip = tooltip
//options.plotOptions = plotoptions
//options.series = [pie]
//
//chartView.options = options
//chartView.addSubview(chartView)
//}
