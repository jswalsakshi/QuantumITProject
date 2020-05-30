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
       // self.setUpChartUI()
    }
    
    func setUpChartUI() {
        let chartView = HIChartView(frame: CGRect(x: 5.0, y: 5.0, width: self.view.bounds.size.width/2, height: self.view.bounds.size.height/2))
        chartView.backgroundColor = .black
        
        self.chartView.addSubview(chartView)
    }
    
    @IBAction func actionCloseView(_ sender: Any) {
        self.dismiss(animated: true) {
            
        }
    }
}

//import Highcharts
//import UIKit
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
////data.dataLabels = [
////"enabled": NSNumber(value: false)
////]
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
