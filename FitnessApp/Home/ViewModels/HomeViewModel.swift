//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Abdul Suleiman on 04/08/25.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @State var calories: Int = 123
    @State var active: Int = 30
    @State var stand: Int = 8
    var mockActivities = [
        Activity(id: 0, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount:"7,241" ),
         Activity(id: 1, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .yellow, amount:"1,821" ),
     Activity(id: 3, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .cyan, amount:"3,621" ),
        Activity(id: 5, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.run", tintColor: .purple, amount:"4,121" ),    ]

    var  mockWorkouts = [
        Workout(id: 0, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", date: "Aug 2",  calories:"7,241 kcal", tintColor: .green ),
        Workout(id: 4, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", date: "Aug 16", calories:"5,521 kcal", tintColor: .purple ),
        Workout(id: 5, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.run", date: "Aug 19", calories:"4,121 kcal", tintColor: .cyan )
    ]
    
}
