//
//  ActivityCardView.swift
//  Fitness
//
//  Created by Bhavin Bhadani on 15/08/24.
//

import SwiftUI

struct Workout {
    let id: Int
    let title: String
    let image: String
    let tintColor: Color
    let date: String
    let duration: String
    let calories: String
}

struct WorkoutCardView: View {
    @State var workout: Workout
    
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .padding()
                .foregroundColor(.green)
                .frame(width: 48, height: 48)
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack(spacing: 16) {
                HStack {
                    Text(workout.title)
                        .font(.title3)
                    Spacer()
                    
                    Text(workout.duration)
                }
                
                HStack {
                    Text(workout.date)
                    
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
            .padding()
        }
    }
}

#Preview {
    WorkoutCardView(
        workout: Workout(
            id: 0,
            title: "Running",
            image: "figure.run",
            tintColor: .green,
            date: "17 Aug",
            duration: "42 mins",
            calories: "200 kcal"
        )
    )
}
