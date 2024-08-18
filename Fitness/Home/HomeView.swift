//
//  HomeView.swift
//  Fitness
//
//  Created by Bhavin Bhadani on 10/08/24.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 50
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(
            id: 0,
            title: "Today Steps",
            subtitle: "Goal, 1000",
            image: "figure.walk",
            tintColor: .green,
            amount: "6121"
        ),
        
        Activity(
            id: 1,
            title: "Today Steps",
            subtitle: "Goal, 1000",
            image: "figure.walk",
            tintColor: .green,
            amount: "6121"
        ),
        
        Activity(
            id: 2,
            title: "Today Steps",
            subtitle: "Goal, 1000",
            image: "figure.walk",
            tintColor: .green,
            amount: "6121"
        ),
        
        Activity(
            id: 3,
            title: "Today Steps",
            subtitle: "Goal, 1000",
            image: "figure.walk",
            tintColor: .green,
            amount: "6121"
        )
    ]
    
    var mockWorkouts = [
        Workout(
            id: 0,
            title: "Running",
            image: "figure.run",
            tintColor: .green,
            date: "17 Aug",
            duration: "42 mins",
            calories: "200 kcal"
        ),
        Workout(
            id: 1,
            title: "Running",
            image: "figure.run",
            tintColor: .green,
            date: "17 Aug",
            duration: "42 mins",
            calories: "200 kcal"
        ),
        Workout(
            id: 2,
            title: "Running",
            image: "figure.run",
            tintColor: .green,
            date: "17 Aug",
            duration: "42 mins",
            calories: "200 kcal"
        ),
        Workout(
            id: 3,
            title: "Running",
            image: "figure.run",
            tintColor: .green,
            date: "17 Aug",
            duration: "42 mins",
            calories: "200 kcal"
        )
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack {
                        Spacer()
                        
                        VStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.red)
                                
                                Text("120 kcal")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.green)
                                
                                Text("52 mins")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.blue)
                                
                                Text("8 hours")
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $calories, goal: 300, color: .red)
                            
                            ProgressCircleView(progress: $active, goal: 90, color: .green)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                                .padding(.all, 40)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Text("Fitness Activity")
                        
                        Spacer()
                        
                        Button {
                            print("View More")
                        } label: {
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        ForEach(mockActivities, id: \.id) { activity in
                            ActivityCardView(activity: activity)
                        }
                    }
                    .padding()
                    
                    HStack {
                        Text("Recent Workouts")
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id) { workout in
                            WorkoutCardView(workout: workout)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
