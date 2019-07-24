//
//  AppContext.swift
//  Example
//
//  Created by Yuriy Savitskiy on 7/24/19.
//  Copyright © 2019 Yuriy Savitskiy. All rights reserved.
//

import Foundation

protocol AccountServiceContext {
    var accountService: AccountService { get set}
}

typealias AppContext =
    AccountServiceContext

open class AppContextImpl: AppContext {
    var accountService: AccountService
    
    init() {
        self.accountService = AccountServiceImpl()
    }
}
