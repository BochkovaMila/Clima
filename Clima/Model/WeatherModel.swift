//
//  WeatherModel.swift
//  Clima
//
//  Created by Mila B on 24.02.2022.
//

import Foundation

struct WeatherModel {
    let conditionId: Int //stored property
    let cityName: String
    let tempreture: Double
    
    var tempretureString: String {
        return String(format: "%.1f", tempreture)
    }
    
    var conditionName: String { //computed property is always var
        switch conditionId {
                case 200...232:
                    return "cloud.bolt"
                case 300...321:
                    return "cloud.drizzle"
                case 500...531:
                    return "cloud.rain"
                case 600...622:
                    return "cloud.snow"
                case 701...781:
                    return "cloud.fog"
                case 800:
                    return "sun.max"
                case 801...804:
                    return "cloud.bolt"
                default:
                    return "cloud"
                }
    }
    
}
