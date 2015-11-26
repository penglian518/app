//
//  QModel.swift
//  Questionnaire_v1.2
//
//  Created by Peng Lian on 10/23/15.
//  Copyright (c) 2015 Peng Lian. All rights reserved.
//

import Foundation

class QModel {
    
    func formatGlobaldict(Dictionary<String, AnyObject>)->Dictionary<String, AnyObject>{
        // format the Golobal dict
        var results_dict = Dictionary<String, AnyObject>()
        
        
        // Q1
        results_dict["Q1"] = "noGPID"
        if (Global_dict["Q1_TF"] != nil) {
            results_dict["Q1"] = Global_dict["Q1_TF"]!
        }
        
        // Q2
        results_dict["Q2"] = getDate()
        
        //Q3
        results_dict["Q3"] = "noID"
        if (Global_dict["Q3_TF"] != nil) {
            results_dict["Q3"] = Global_dict["Q3_TF"]!
        }
        
        // Q4
        results_dict["Q4"] = "noAGE"
        if (Global_dict["Q4_TF"] != nil) {
            results_dict["Q4"] = Global_dict["Q4_TF"]!
        }
        
        // Q5
        results_dict["Q5"] = "0"
        if (Global_dict["Q5_SW"] != nil) {
            results_dict["Q5"] = Global_dict["Q5_SW"]!
        }
        
        // Q6
        results_dict["Q6"] = "noHospital"
        
        if (Global_dict["Q6_TF"] != nil) {
            results_dict["Q6"] = Global_dict["Q6_TF"]!
        }
        
        
        // Q7
        var  Q7_year:AnyObject
        var  Q7_month:AnyObject
        var  Q7_day:AnyObject
        
        if (Global_dict["Q7_year_TF"] != nil) {
            Q7_year = Global_dict["Q7_year_TF"]!
        } else {
            Q7_year = 1900
        }
        
        if (Global_dict["Q7_month_TF"] != nil) {
            Q7_month = Global_dict["Q7_month_TF"]!
        } else {
            Q7_month = 1
        }
        
        if (Global_dict["Q7_day_TF"] != nil) {
            Q7_day = Global_dict["Q7_day_TF"]!
        } else {
            Q7_day = 1
        }
        
        results_dict["Q7"] = "\(Q7_year)-\(Q7_month)-\(Q7_day)"
        
        
        //Q8
        results_dict["Q8"] = "0"
        if (Global_dict["Q8_SW"] != nil) {
            results_dict["Q8"] = Global_dict["Q8_SW"]!
        }
        
        //Q9
        var Q9a:AnyObject
        var Q9b:AnyObject
        var Q9c:AnyObject
        var Q9d:AnyObject
        var Q9e:AnyObject
        var Q9f:AnyObject
        var Q9g:AnyObject
        
        if (Global_dict["Q9a_SW"] != nil) {
            Q9a = Global_dict["Q9a_SW"]!
        } else {
            Q9a = 0
        }
        if (Global_dict["Q9b_SW"] != nil) {
            Q9b = Global_dict["Q9b_SW"]!
        } else {
            Q9b = 0
        }
        if (Global_dict["Q9c_SW"] != nil) {
            Q9c = Global_dict["Q9c_SW"]!
        } else {
            Q9c = 0
        }
        if (Global_dict["Q9d_SW"] != nil) {
            Q9d = Global_dict["Q9d_SW"]!
        } else {
            Q9d = 0
        }
        if (Global_dict["Q9e_SW"] != nil) {
            Q9e = Global_dict["Q9e_SW"]!
        } else {
            Q9e = 0
        }
        if (Global_dict["Q9f_SW"] != nil) {
            Q9f = Global_dict["Q9f_SW"]!
        } else {
            Q9f = 0
        }
        if (Global_dict["Q9g_SW"] != nil) {
            Q9g = Global_dict["Q9g_SW"]!
        } else {
            Q9g = 0
        }
        
        
        results_dict["Q9"] = "\(Q9a)\(Q9b)\(Q9c)\(Q9d)\(Q9e)\(Q9f)\(Q9g)"
        
        
        //Q10
        var Q10_1:AnyObject
        var Q10_2:AnyObject
        var Q10_3:AnyObject
        
        if (Global_dict["Q10.1_SW"] != nil) {
            Q10_1 = Global_dict["Q10.1_SW"]!
        } else {
            Q10_1 = 0
        }
        if (Global_dict["Q10.2_SW"] != nil) {
            Q10_2 = Global_dict["Q10.2_SW"]!
        } else {
            Q10_2 = 0
        }
        if (Global_dict["Q10.3_SW"] != nil) {
            Q10_3 = Global_dict["Q10.3_SW"]!
        } else {
            Q10_3 = 0
        }
        
        results_dict["Q10"] = "\(Q10_1)\(Q10_2)\(Q10_3)"
        
        
        //Q10_1
        var Q10_1_1a:AnyObject
        var Q10_1_1b:AnyObject
        var Q10_1_1c:AnyObject
        var Q10_1_1d:AnyObject
        
        
        if (Global_dict["Q10.1.1a_SW"] != nil) {
            Q10_1_1a = Global_dict["Q10.1.1a_SW"]!
        } else {
            Q10_1_1a = "0"
        }
        if (Global_dict["Q10.1.1b_SW"] != nil) {
            Q10_1_1b = Global_dict["Q10.1.1b_SW"]!
        } else {
            Q10_1_1b = "0"
        }
        if (Global_dict["Q10.1.1c_SW"] != nil) {
            Q10_1_1c = Global_dict["Q10.1.1c_SW"]!
        } else {
            Q10_1_1c = "0"
        }
        if (Global_dict["Q10.1.1d_SW"] != nil) {
            Q10_1_1d = Global_dict["Q10.1.1d_SW"]!
        } else {
            Q10_1_1d = "0"
        }
        
        var dQ10_1_1a = String(Q10_1_1a as NSString).toInt()!
        var dQ10_1_1b = String(Q10_1_1b as NSString).toInt()!
        var dQ10_1_1c = String(Q10_1_1c as NSString).toInt()!
        
        
        if (dQ10_1_1a + dQ10_1_1b + dQ10_1_1c >= 2) {
            Q10_1_1d = "1"
        }
        
        results_dict["Q10_1"] = "\(Q10_1_1a)\(Q10_1_1b)\(Q10_1_1c)\(Q10_1_1d)"
        
        
        
        //Q10_2
        var Q10_2_1a:AnyObject
        var Q10_2_1b:AnyObject
        var Q10_2_1c:AnyObject
        var Q10_2_1d:AnyObject
        var Q10_2_1e:AnyObject
        var Q10_2_1f:AnyObject
        
        if (Global_dict["Q10.2.1a_SW"] != nil) {
            Q10_2_1a = Global_dict["Q10.2.1a_SW"]!
        } else {
            Q10_2_1a = "0"
        }
        if (Global_dict["Q10.2.1b_SW"] != nil) {
            Q10_2_1b = Global_dict["Q10.2.1b_SW"]!
        } else {
            Q10_2_1b = "0"
        }
        if (Global_dict["Q10.2.1c_SW"] != nil) {
            Q10_2_1c = Global_dict["Q10.2.1c_SW"]!
        } else {
            Q10_2_1c = "0"
        }
        if (Global_dict["Q10.2.1d_SW"] != nil) {
            Q10_2_1d = Global_dict["Q10.2.1d_SW"]!
        } else {
            Q10_2_1d = "0"
        }
        if (Global_dict["Q10.2.1e_SW"] != nil) {
            Q10_2_1e = Global_dict["Q10.2.1e_SW"]!
        } else {
            Q10_2_1e = "0"
        }
        if (Global_dict["Q10.2.1f_SW"] != nil) {
            Q10_2_1f = Global_dict["Q10.2.1f_SW"]!
        } else {
            Q10_2_1f = "0"
        }
        
        var dQ10_2_1a = String(Q10_2_1a as NSString).toInt()!
        var dQ10_2_1b = String(Q10_2_1b as NSString).toInt()!
        var dQ10_2_1c = String(Q10_2_1c as NSString).toInt()!
        var dQ10_2_1d = String(Q10_2_1d as NSString).toInt()!
        var dQ10_2_1e = String(Q10_2_1e as NSString).toInt()!

        
        if (dQ10_2_1a + dQ10_2_1b + dQ10_2_1c + dQ10_2_1d + dQ10_2_1e >= 2) {
            Q10_2_1f = 1
        }
        
        results_dict["Q10_2"] = "\(Q10_2_1a)\(Q10_2_1b)\(Q10_2_1c)\(Q10_2_1d)\(Q10_2_1e)\(Q10_2_1f)"
        
        
        //Q10_3
        var Q10_3_1a:AnyObject
        var Q10_3_1b:AnyObject
        var Q10_3_1c:AnyObject
        var Q10_3_1d:AnyObject
        
        
        if (Global_dict["Q10.3.1a_SW"] != nil) {
            Q10_3_1a = Global_dict["Q10.3.1a_SW"]!
        } else {
            Q10_3_1a = "0"
        }
        if (Global_dict["Q10.3.1b_SW"] != nil) {
            Q10_3_1b = Global_dict["Q10.3.1b_SW"]!
        } else {
            Q10_3_1b = "0"
        }
        if (Global_dict["Q10.3.1c_SW"] != nil) {
            Q10_3_1c = Global_dict["Q10.3.1c_SW"]!
        } else {
            Q10_3_1c = "0"
        }
        if (Global_dict["Q10.3.1d_SW"] != nil) {
            Q10_3_1d = Global_dict["Q10.3.1d_SW"]!
        } else {
            Q10_3_1d = "0"
        }
        
        var dQ10_3_1a = String(Q10_3_1a as NSString).toInt()!
        var dQ10_3_1b = String(Q10_3_1b as NSString).toInt()!
        var dQ10_3_1c = String(Q10_3_1c as NSString).toInt()!

        
        
        if (dQ10_3_1a + dQ10_3_1b + dQ10_3_1c >= 2) {
            Q10_3_1d = 1
        }
        
        results_dict["Q10_3"] = "\(Q10_3_1a)\(Q10_3_1b)\(Q10_3_1c)\(Q10_3_1d)"
        
        
        //Q11
        var Q11_1:AnyObject
        var Q11_2:AnyObject
        var Q11_3:AnyObject
        
        if (Global_dict["Q11.1_SW"] != nil) {
            Q11_1 = Global_dict["Q11.1_SW"]!
        } else {
            Q11_1 = 0
        }
        if (Global_dict["Q11.2_SW"] != nil) {
            Q11_2 = Global_dict["Q11.2_SW"]!
        } else {
            Q11_2 = 0
        }
        if (Global_dict["Q11.3_SW"] != nil) {
            Q11_3 = Global_dict["Q11.3_SW"]!
        } else {
            Q11_3 = 0
        }
        
        results_dict["Q11"] = "\(Q11_1)\(Q11_2)\(Q11_3)"
        
        
        //Q11_1
        var Q11_1_1:AnyObject
        var Q11_1_2a:AnyObject
        var Q11_1_2b:AnyObject
        var Q11_1_2c:AnyObject
        var Q11_1_3a:AnyObject
        var Q11_1_3b:AnyObject
        var Q11_1_3c:AnyObject
        
        if (Global_dict["Q11.1.1_SW"] != nil) {
            Q11_1_1 = Global_dict["Q11.1.1_SW"]!
        } else {
            Q11_1_1 = 0
        }
        if (Global_dict["Q11.1.2a_SW"] != nil) {
            Q11_1_2a = Global_dict["Q11.1.2a_SW"]!
        } else {
            Q11_1_2a = 0
        }
        if (Global_dict["Q11.1.2b_SW"] != nil) {
            Q11_1_2b = Global_dict["Q11.1.2b_SW"]!
        } else {
            Q11_1_2b = 0
        }
        if (Global_dict["Q11.1.2c_SW"] != nil) {
            Q11_1_2c = Global_dict["Q11.1.2c_SW"]!
        } else {
            Q11_1_2c = 0
        }
        if (Global_dict["Q11.1.3a_SW"] != nil) {
            Q11_1_3a = Global_dict["Q11.1.3a_SW"]!
        } else {
            Q11_1_3a = 0
        }
        if (Global_dict["Q11.1.3b_SW"] != nil) {
            Q11_1_3b = Global_dict["Q11.1.3b_SW"]!
        } else {
            Q11_1_3b = 0
        }
        if (Global_dict["Q11.1.3c_SW"] != nil) {
            Q11_1_3c = Global_dict["Q11.1.3c_SW"]!
        } else {
            Q11_1_3c = 0
        }
        
        results_dict["Q11_1"] = "\(Q11_1_1)\(Q11_1_2a)\(Q11_1_2b)\(Q11_1_2c)\(Q11_1_3a)\(Q11_1_3b)\(Q11_1_3c)"
        
        
        //Q11_2
        var Q11_2_1:AnyObject
        var Q11_2_2a:AnyObject
        var Q11_2_2b:AnyObject
        var Q11_2_2c:AnyObject
        var Q11_2_3a:AnyObject
        var Q11_2_3b:AnyObject
        var Q11_2_3c:AnyObject
        
        if (Global_dict["Q11.2.1_SW"] != nil) {
            Q11_2_1 = Global_dict["Q11.2.1_SW"]!
        } else {
            Q11_2_1 = 0
        }
        if (Global_dict["Q11.2.2a_SW"] != nil) {
            Q11_2_2a = Global_dict["Q11.2.2a_SW"]!
        } else {
            Q11_2_2a = 0
        }
        if (Global_dict["Q11.2.2b_SW"] != nil) {
            Q11_2_2b = Global_dict["Q11.2.2b_SW"]!
        } else {
            Q11_2_2b = 0
        }
        if (Global_dict["Q11.2.2c_SW"] != nil) {
            Q11_2_2c = Global_dict["Q11.2.2c_SW"]!
        } else {
            Q11_2_2c = 0
        }
        if (Global_dict["Q11.2.3a_SW"] != nil) {
            Q11_2_3a = Global_dict["Q11.2.3a_SW"]!
        } else {
            Q11_2_3a = 0
        }
        if (Global_dict["Q11.2.3b_SW"] != nil) {
            Q11_2_3b = Global_dict["Q11.2.3b_SW"]!
        } else {
            Q11_2_3b = 0
        }
        if (Global_dict["Q11.2.3c_SW"] != nil) {
            Q11_2_3c = Global_dict["Q11.2.3c_SW"]!
        } else {
            Q11_2_3c = 0
        }
        
        results_dict["Q11_2"] = "\(Q11_2_1)\(Q11_2_2a)\(Q11_2_2b)\(Q11_2_2c)\(Q11_2_3a)\(Q11_2_3b)\(Q11_2_3c)"
        
        
        //Q11_3
        var Q11_3_1:AnyObject
        var Q11_3_2a:AnyObject
        var Q11_3_2b:AnyObject
        var Q11_3_2c:AnyObject
        var Q11_3_3a:AnyObject
        var Q11_3_3b:AnyObject
        var Q11_3_3c:AnyObject
        
        if (Global_dict["Q11.3.1_SW"] != nil) {
            Q11_3_1 = Global_dict["Q11.3.1_SW"]!
        } else {
            Q11_3_1 = 0
        }
        if (Global_dict["Q11.3.2a_SW"] != nil) {
            Q11_3_2a = Global_dict["Q11.3.2a_SW"]!
        } else {
            Q11_3_2a = 0
        }
        if (Global_dict["Q11.3.2b_SW"] != nil) {
            Q11_3_2b = Global_dict["Q11.3.2b_SW"]!
        } else {
            Q11_3_2b = 0
        }
        if (Global_dict["Q11.3.2c_SW"] != nil) {
            Q11_3_2c = Global_dict["Q11.3.2c_SW"]!
        } else {
            Q11_3_2c = 0
        }
        if (Global_dict["Q11.3.3a_SW"] != nil) {
            Q11_3_3a = Global_dict["Q11.3.3a_SW"]!
        } else {
            Q11_3_3a = 0
        }
        if (Global_dict["Q11.3.3b_SW"] != nil) {
            Q11_3_3b = Global_dict["Q11.3.3b_SW"]!
        } else {
            Q11_3_3b = 0
        }
        if (Global_dict["Q11.3.3c_SW"] != nil) {
            Q11_3_3c = Global_dict["Q11.3.3c_SW"]!
        } else {
            Q11_3_3c = 0
        }
        
        results_dict["Q11_3"] = "\(Q11_3_1)\(Q11_3_2a)\(Q11_3_2b)\(Q11_3_2c)\(Q11_3_3a)\(Q11_3_3b)\(Q11_3_3c)"
        
        
        // Q12
        results_dict["Q12"] = "0"
        if (Global_dict["Q12_SW"] != nil) {
            results_dict["Q12"] = Global_dict["Q12_SW"]!
        }
        
        
        //Q13
        var Q13:AnyObject
        var Q13a:AnyObject
        var Q13b:AnyObject
        var Q13c:AnyObject
        
        if (Global_dict["Q13_SW"] != nil) {
            Q13 = Global_dict["Q13_SW"]!
        } else {
            Q13 = 0
        }
        if (Global_dict["Q13a_SW"] != nil) {
            Q13a = Global_dict["Q13a_SW"]!
        } else {
            Q13a = 0
        }
        if (Global_dict["Q13b_SW"] != nil) {
            Q13b = Global_dict["Q13b_SW"]!
        } else {
            Q13b = 0
        }
        if (Global_dict["Q13c_SW"] != nil) {
            Q13c = Global_dict["Q13c_SW"]!
        } else {
            Q13c = 0
        }
        
        results_dict["Q13"] = "\(Q13)\(Q13a)\(Q13b)\(Q13c)"
        
        
        // Q14
        results_dict["Q14"] = "noDetail"
        if (Global_dict["Q14_TF"] != nil) {
            results_dict["Q14"] = Global_dict["Q14_TF"]!
        }
        
        // Q15
        results_dict["Q15"] = "0"
        if (Global_dict["Q15_SW"] != nil) {
            results_dict["Q15"] = Global_dict["Q15_SW"]!
        }
        
        
        return results_dict
    }

    // convert dictionary to json string
    func nsdict2jsonstr(Dict: Dictionary<String, AnyObject>) -> NSString {
        var errorWrite:NSError?
        
        if NSJSONSerialization.isValidJSONObject(Dict){
            var jsonWriteData = NSJSONSerialization.dataWithJSONObject(Dict, options: NSJSONWritingOptions.PrettyPrinted, error: &errorWrite)
            var lastParse = NSString(data: jsonWriteData!, encoding: NSUTF8StringEncoding)
            return lastParse!
            
        } else {
            println("Cannot convert the dictionary.")
            return "Faild_to_convert"
        }
    }
    
    // current date
    func getDate() -> String {
        var CurrentDate:String
        // get current date
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitDay, fromDate: date)
        let year = components.year
        let month = components.month
        let day = components.day
        
        CurrentDate = "\(year)-\(month)-\(day)"
        return CurrentDate
    }
    
    // fetch the data from online DB, with patientID
    func fetchRemoteData(patientID:Int) -> Dictionary<String, AnyObject> {
        
        // prepare the url
        var url_base:String = "http://basinlotus.wicp.net:51606/api/v1.0/Patient_DB"
        //var url_base:String = "http://192.168.10.105:5000/api/v1.0/Patient_DB"
        var url:String
        url = "\(url_base)/\(patientID)"
        
        
        // prepare the request
        var request = NSMutableURLRequest(URL: NSURL(string: url)!)
        var response: NSURLResponse?
        var error: NSError?
        
        request.HTTPMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField:"Content-Type")
        
        //sent the request
        var dataVal:NSData = NSURLConnection.sendSynchronousRequest(request, returningResponse: &response, error: &error)!
        
        
        // get the json result and convert it to NSDictionary
        var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(dataVal, options: NSJSONReadingOptions.MutableContainers, error: &error) as Dictionary<String, AnyObject>
        
        
        // convert the value of "Patient_DB" of NSDictionary to Dictionary
        var p_detail:Dictionary<String, AnyObject!> = Dictionary<String, AnyObject!>()
        for key:AnyObject in jsonResult.allValues[0].allKeys {
            let stringKey = key as String
            if let keyValue: AnyObject = jsonResult.allValues[0].valueForKey(stringKey){
                p_detail[stringKey] = keyValue
            }
        }
        
        return p_detail
    }
    
    
    // post the local data to online
    // the following method using NSURLConnection
    // known bug: Cannnot return failed signal even if it is failed to sumbit the data! Maybe because of the asynchronous nature
    func postLocalData(post_dict:Dictionary<String, AnyObject>)-> String {
        // prepare the url
        var url_base:String = "http://basinlotus.wicp.net:54886/api/v1.0/Patient_DB"
        //var url_base:String = "http://192.168.10.105:5000/api/v1.0/Patient_DB"
        var url:String
        url = "\(url_base)"
        
        // set the base64-encoded credentials
        let username = "root"
        let password = "a1b2c3d4"
        let loginString = NSString(format: "%@:%@", username, password)
        let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
        let base64LoginString = loginData.base64EncodedStringWithOptions(nil)
        
        
        // set the boday
        //println(post_dict)
        let theJsonData = NSJSONSerialization.dataWithJSONObject(post_dict, options: NSJSONWritingOptions(0), error: nil)!
        let theJsonText = NSString(data: theJsonData, encoding: NSASCIIStringEncoding)  // for debugging
        //println(theJsonText)
        
        
        // prepare the request
        var request = NSMutableURLRequest(URL: NSURL(string: url)!)
        var response: NSURLResponse?
        var error: NSError?
        
        
        request.addValue("application/json", forHTTPHeaderField:"Accept")
        request.HTTPMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField:"Content-type")
        
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        
        request.HTTPBody = theJsonData
        
        //var feedBack = "0"

        //sent the request

        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: {(response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            var dict = self.nsdict2jsonstr(post_dict)
             })
        
        return "Success"
    }
    
    
    // the following method using NSURLSession
    // known bug: Cannnot return failed signal even if it is failed to sumbit the data! Maybe because of the asynchronous nature
    func postLocalData_v1(post_dict:Dictionary<String, AnyObject>)-> String {
        // prepare the url
        var url_base:String = "http://basinlotus.wicp.net:54886/api/v1.0/Patient_DB"
        //var url_base:String = "http://192.168.10.105:5000/api/v1.0/Patient_DB"
        var url:String
        url = "\(url_base)"
        
        // set the base64-encoded credentials
        let username = "root"
        let password = "a1b2c3d4"
        let loginString = NSString(format: "%@:%@", username, password)
        let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
        let base64LoginString = loginData.base64EncodedStringWithOptions(nil)
        
        
        // set the boday
        //println(post_dict)
        let theJsonData = NSJSONSerialization.dataWithJSONObject(post_dict, options: NSJSONWritingOptions(0), error: nil)!
        let theJsonText = NSString(data: theJsonData, encoding: NSASCIIStringEncoding)  // for debugging
        //println(theJsonText)
        
        
        // prepare the request
        var request = NSMutableURLRequest(URL: NSURL(string: url)!)
        var session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
        
        var err: NSError?
        request.HTTPBody = theJsonData
        request.addValue("application/json", forHTTPHeaderField:"Accept")
        request.setValue("application/json", forHTTPHeaderField:"Content-type")
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        
        var fb:String = "Success"
        
        var task = session.dataTaskWithRequest(request, completionHandler: { data, response, error ->Void in
            var dict = self.nsdict2jsonstr(post_dict)
            
            // known bug, not working
            if error != nil {
                fb = "Failed"
            } else {
                fb = "Success"
            }
            
            })
        
        
        task.resume()
        
        return fb
    }
    
    
    
    
    // delete the online data according the the ID
    func deleteRemoteData(patientID:Int) {
        // prepare the url
        var url_base:String = "http://basinlotus.wicp.net:54886/api/v1.0/Patient_DB"
        //var url_base:String = "http://192.168.10.105:5000/api/v1.0/Patient_DB"
        var url:String
        url = "\(url_base)/\(patientID)"
        
        
        // set the base64-encoded credentials
        let username = "root"
        let password = "a1b2c3d4"
        let loginString = NSString(format: "%@:%@", username, password)
        let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
        let base64LoginString = loginData.base64EncodedStringWithOptions(nil)
        
        
        // prepare the request
        var request = NSMutableURLRequest(URL: NSURL(string: url)!)
        var response: NSURLResponse?
        var error: NSError?
        
        
        request.HTTPMethod = "DELETE"
        request.setValue("application/json", forHTTPHeaderField:"Content-type")
        
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        
        
        //sent the request
        let urlConnection = NSURLConnection(request: request, delegate: self)
        
    }
}

