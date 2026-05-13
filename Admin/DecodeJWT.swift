//
//  File.swift
//  KeabisAdmin
//
//  Created by Keabis Mac2 on 06/03/24.
//

import Foundation
import JWTDecode

class DecodeJWT {
    static func getUserId(token:String) -> (userId:String,tenantId:String,rol:String,roleId:String) {

        do {
        let jwt = try decode(jwt: token)
            print("RoleId====\(jwt.body["RoleId"] ?? "")")
            print("TenantId====\(jwt.body["TenantId"] ?? "")")
            
            return (jwt.body["EmployeeId"] as? String ?? "",jwt.body["RoleId"] as? String ?? "",jwt.body["rol"] as? String ?? "", jwt.body["RoleId"] as? String ?? "")
        } catch  let error {
            print("error while dcoding token ====\(error.localizedDescription)")
        }
        return ("","","","")
    }
}
