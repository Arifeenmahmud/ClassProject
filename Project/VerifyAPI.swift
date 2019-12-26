//
//  VerifyAPI.swift
//  Project
//
//  Created by Lab on 12/25/19.
//  Copyright © 2019 Lab. All rights reserved.
//

import Foundation


struct VerifyAPI {
    static func sendVerificationCode(_ countryCode: String,
                                     _ phoneNumber: String) {
        let parameters = [
            "via": "sms",
            "country_code": countryCode,
            "phone_number": phoneNumber
        ]
        
        RequestHelper.createRequest("start", parameters) {
            json in
            return .success(DataResult(data: json))
        }
    }
    static func ValidateVerificationCode(_ countryCode: String,
                                         _ phoneNumber: String,
                                         _ Code: String,
                                         CompletionHandler: @escaping (CheckResult) ->Void) {
        let parameters = [
            "Via": "SMS",
            "country_code": countryCode,
            "phone_number": phoneNumber,
            "verification_code": Code
        ]
        
        RequestHelper.createRequest("check", parameters) {
            jsonData in
            let decoder = JSONDecoder()
            do{
                let checked = try decoder.decode(CheckResult.self, from: jsonData)
                DispatchQueue.main.async {
                    CompletionHandler(checked)
                }
                return VerifyResult.success(checked)
            }catch {
                return VerifyResult.failure(VerifyError.err("failed to deserialize"))
            }
            
        }
    }
}
