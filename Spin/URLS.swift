//
//  URLS.swift
//  Spin
//
//  Created by Mohamed Salah on 1/20/17.
//  Copyright © 2017 Mohamed Salah. All rights reserved.
//

import Foundation

enum URLS : String {
    
    case server_ip = "http://arena-egypt.com/testbed"
    
    case login = "/sanofy/api/Login"
    case register = "/sanofy/api/Register"
    
    case areas = "/sanofy/api/Register/getAreas"
    
    case stay_updated = "/sanofy/api/Stayupdate/"
    case news = "/sanofy/api/News"
    case faq = "/sanofy/api/Faqs"
    case asked_questions = "/sanofy/api/Questions"
    case ask_question = "/sanofy/api/Questions/ask"
    case about = "/sanofy/api/About"
    case videos = "/sanofy/api/Videos"
    case events = "/sanofy/api/Events"
    case newsletter = "/sanofy/api/Newsletter"
    case tips = "/sanofy/api/Mycorner"
    case updateProfile = "/sanofy/api/User/updateProfile"
    
    case caseStudy = "/sanofy/api/CaseStudies"
    case eCME = "/sanofy/api/Ecme"
}
