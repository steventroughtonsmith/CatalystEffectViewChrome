//
//  TCXMainViewController.swift
//  TranslucentChrome
//
//  Created by Steven Troughton-Smith on 28/12/2021.
//  
//

import UIKit
import SwiftUI

struct MainView: View {
	
	let fillColor = Color(red: 0.957, green: 0.949, blue: 0.961, opacity: 1.000)
	
	var background: some View {
		RoundedRectangle(cornerRadius: 8)
			.fill(fillColor)
			.shadow(color:Color(white:0.6, opacity:0.1), radius: 8, x:0, y:-4)
	}
	
	var cell: some View {
		ZStack {
			background
			VStack(alignment:.leading) {
				Text("Lorem")
					.foregroundColor(.gray)
				Text("Ipsum")
					.font(.title)
			}
			.padding()
		}
	}
	
	var body: some View {
		HStack(spacing:20) {
			ZStack {
				background
				VStack(alignment:.leading, spacing:10) {
					Text("LOGO")
						.bold()
						.font(.title)
						.foregroundColor(.blue)
					
					ForEach(0 ..< 5) { _ in
						HStack {
							Image(systemName:"star")
							Text("Testificate")
							Spacer(minLength: 0)
						}
						.foregroundColor(.gray)
						
					}
					Spacer(minLength: 0)
					Divider()
					
					HStack {
					Circle()
						.fill(.gray)
						.frame(width:40, height:40)
						VStack(alignment:.leading) {
							Text("First name")
							Text("Details")
						}
					}
				}
				.padding()
			}
			.frame(maxWidth:200)
			
			VStack {
				Spacer(minLength: 0)
				
				HStack {
					VStack(alignment:.leading) {
						Text("Johnny Appleseed")
							.font(.largeTitle)
							.bold()
						Text("Lorem ipsum dolor sit amet")
					}
					Spacer(minLength: 0)
					
					Circle()
						.fill(fillColor)
						.frame(width:40, height:40)
				}
				
				HStack(spacing:20) {
					VStack(spacing:20) {
						HStack(spacing:20) {
							cell
							cell
							cell
						}
						.frame(maxHeight:120)
						
						background
						
						
					}
					
					ZStack {
						background
					}
					.frame(maxWidth:200)
				}
			}
		}
		.padding()
		.redacted(reason: .placeholder)
	}
}
