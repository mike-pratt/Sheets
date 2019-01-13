//
//  HomeViewControllerDataSource.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import Foundation
import UIKit

class HomeViewControllerDataSource: NSObject, UICollectionViewDataSource {
    
    let months: [String] = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    let days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "Later"]
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppConstants.todoItemCellId, for: indexPath) as! DayOfWeekCollectionViewCell
    
        cell.dayLabel.text = days[indexPath.row]
        if indexPath.row != days.count - 1 { // Don't show a date for the 'Later' tab.
            cell.dateLabel.text = fetchDate(dayIncrement: indexPath.row)
        }
        let todoView1 = TodoItemView()
        let todoView2 = TodoItemView()
        todoView1.actionLabel.text = "Test 1"
        todoView2.actionLabel.text = "Test 2222222"
        cell.todoItemsStackView.addArrangedSubview(todoView1)
        cell.todoItemsStackView.addArrangedSubview(todoView2)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        if kind == UICollectionView.elementKindSectionHeader {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: AppConstants.homeHeaderViewId, for: indexPath) as! HomeHeaderCollectionViewReusableView
            
            return headerView
//        }
    }
    
    private func fetchDate(dayIncrement: Int) -> String { // TODO: Account for Months that have 28, 29, 31 days, etc. i.e. Don't show the 30 Febuary
        let currentDate = Date()
        let calendar = Calendar.current
        let calendarOptions = calendar.dateComponents([.year, .month, .day], from: currentDate)
        
        guard var day = calendarOptions.day else { return "Day invalid" }
        day = day + dayIncrement
        
        guard let monthIndex = calendarOptions.month else { return "Month invalid" }
        
        return String(day) + " " + months[monthIndex - 1]
    }
    
}
