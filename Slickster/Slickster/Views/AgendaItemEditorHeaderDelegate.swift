//
//  AgendaItemEditorHeaderDelegate.swift
//  Slickster
//
//  Created by Ken Nyame on 9/28/2558 BE.
//  
//

import Foundation

protocol AgendaItemEditorHeaderDelegate {
    
    func agendaItemEditorCategoryActivated(
        editorHeader: AgendaItemEditorHeaderView,
        typeCategories: AgendaTypeCategories!,
        eventBriteCategories: [EventbriteCategory]!,
        selectedCategory: AnyObject?,
        parentCategory: AnyObject?)
    
    func agendaItemEditorTimeActivated(
        editorHeader: AgendaItemEditorHeaderView,
        selectedTime: AgendaTime)
    
    func agendaItemEditorDistanceChanged(
        editorHeader: AgendaItemEditorHeaderView,
        distance: Float)
    
    func agendaItemEditorSortModeChanged(
        editorHeader: AgendaItemEditorHeaderView,
        sortMode: String)
}
