//
//  SettingsView.swift
//  Fructus
//
//  Created by Firat Polat on 17.07.2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettinsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettinsLabelView(labelText: "CUSTOMIZATION", labelImage: "paintbrush")
                    ) {
                        
                        Divider().padding(.vertical, 4)
                        
                        VStack {
                            Text("If you wish, you can restart the application by toogle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            HStack {
                                Toggle(isOn: $isOnboarding) {
                                    if isOnboarding {
                                        Text("Restarted".uppercased())
                                            .fontWeight(.bold)
                                            .foregroundColor(.green)
                                    } else {
                                        Text("Restart".uppercased())
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.secondary)
                                    }
                                }
                                .padding()
                                .background(
                                    Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                                )
                            }
                        }
                    }
                
                // MARK: - SECTION 3
                
                GroupBox(
                    label: SettinsLabelView(labelText: "Application", labelImage: "apps.iphone")
                ) {
                    SettingsRowView(name: "Developer", content: "Fırat POLAT")
                    SettingsRowView(name: "Designer", content: "Fırat POLAT")
                    SettingsRowView(name: "Compatibility", content: "iOS 14")
                    SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                    SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                    SettingsRowView(name: "SwiftUI", content: "2.0")
                    SettingsRowView(name: "Version", content: "1.1.0")
                }
            } //: VSTACK
            .navigationTitle("Settings")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
            )
            .padding()
        } //: SCROOL
    } //: NAVIGATION
}
}

// MARK: PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
