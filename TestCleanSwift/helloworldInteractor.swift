//
//  helloworldInteractor.swift
//  TestCleanSwift
//
//  Created by Martin Demiddel on 31.10.18.
//  Copyright (c) 2018 Martin Bing. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol helloworldBusinessLogic
{
  func doSomething(request: helloworld.Something.Request)
}

protocol helloworldDataStore
{
  //var name: String { get set }
}

class helloworldInteractor: helloworldBusinessLogic, helloworldDataStore
{
  var presenter: helloworldPresentationLogic?
  var worker: helloworldWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: helloworld.Something.Request)
  {
    worker = helloworldWorker()
    worker?.doSomeWork()
    
    let response = helloworld.Something.Response()
    presenter?.presentSomething(response: response)
  }
}