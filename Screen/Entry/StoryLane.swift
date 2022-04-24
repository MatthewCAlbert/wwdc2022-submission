//
//  StoryLane.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 24/04/22.
//

import Foundation

struct Story {
    let pages: [DailyView]

    subscript(_ pageIndex: Int) -> DailyView {
        return pages[pageIndex]
    }
}

let storyLane = Story(pages: [
    DailyView(
        targetViewIndex: 1,
        title: "Breakfast",
        backgroundName: "morning",
        activites: [],
        foods: FoodList.morning
    ),
    DailyView(
        targetViewIndex: 2,
        title: "Morning Activity",
        backgroundName: "morning",
        activites: ActivityList.morning,
        foods: []
    ),
    DailyView(
        targetViewIndex: 3,
        title: "Lunch",
        backgroundName: "day",
        activites: [],
        foods: FoodList.afternoon
    ),
    DailyView(
        targetViewIndex: 4,
        title: "Day Activity",
        backgroundName: "day",
        activites: ActivityList.afternoon,
        foods: []
    ),
    DailyView(
        targetViewIndex: 5,
        title: "Dinner",
        backgroundName: "evening",
        activites: [],
        foods: FoodList.evening
    ),
    DailyView(
        targetViewIndex: -1,
        title: "Night Activity",
        backgroundName: "evening",
        activites: ActivityList.evening,
        foods: []
    )
])
