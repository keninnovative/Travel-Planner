//
//  AgendaItemTableViewCellDelegate.swift
//  Slickster
//
//  Created by Ken Nyame on 9/17/2558 BE.
//  
//

import Foundation

protocol AgendaItemTableViewCellDelegate {
    
    func agendaItemPlaceDidSelect(
        agendaItemCell: AgendaItemTableViewCell,
        agendaItem: AgendaItem,
        placeIndex: Int)
    
    func agendaItemPlaceDidChanged(
        agendaItemCell: AgendaItemTableViewCell,
        agendaItem: AgendaItem,
        placeIndex: Int)

    func agendaItemActivityDidEdit(
        agendaItemCell: AgendaItemTableViewCell,
        agendaItem: AgendaItem,
        placeIndex: Int)
    
    func agendaItemActivityCategoryDidEdit(
        agendaItemCell: AgendaItemTableViewCell,
        agendaItemEditorView: AgendaItemEditorView,
        agendaItemEditorHeaderView: AgendaItemEditorHeaderView,
        templateType: String,
        activityType: String,
        typeCategories: AgendaTypeCategories!,
        eventBriteCategories: [EventbriteCategory]!,
        selectedCategory: AnyObject?,
        parentCategory: AnyObject?)

    func agendaItemActivityTimeDidEdit(
        agendaItemCell: AgendaItemTableViewCell,
        agendaItemEditorView: AgendaItemEditorView,
        agendaItemEditorHeaderView: AgendaItemEditorHeaderView,
        selectedTime: AgendaTime)

    func agendaItemActivitySortModeDidChanged(
        agendaItemCell: AgendaItemTableViewCell,
        agendaItemEditorView: AgendaItemEditorView,
        agendaItemEditorHeaderView: AgendaItemEditorHeaderView,
        sortMode: String)
    
    func agendaItemActivityDistanceDidChanged(
        agendaItemCell: AgendaItemTableViewCell,
        agendaItemEditorView: AgendaItemEditorView,
        agendaItemEditorHeaderView: AgendaItemEditorHeaderView,
        distance: Float)
}
