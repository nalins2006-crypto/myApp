//
//  MainTabView.swift
//  MyApp
//
//  Created by Nalin on 28/09/26.
//

import SwiftUI

struct MainTabView: View {
    init() {
        makeTabBarOpaque()
    }
    var body: some View {
        
        TabView{
            placeholderItemView(title: "chats")
                .tabItem {
                    Image(systemName: Tab.chats.icon)
                    Text(Tab.chats.title)
                }
            placeholderItemView(title: "Updates")
                .tabItem {
                    Image(systemName: Tab.updates.icon)
                    Text(Tab.updates.title)
                }
            placeholderItemView(title: "communities")
                    .tabItem {
                        Image(systemName: Tab.communities.icon)
                        Text(Tab.communities.title)
                }
            placeholderItemView(title: "Calls")
                .tabItem{
                    Image(systemName: Tab.calls.icon)
                    Text(Tab.calls.title)
                }
        }
    }
    
    private func makeTabBarOpaque() {
        let apearance = UITabBarAppearance()
        apearance.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = apearance
        UITabBar.appearance().scrollEdgeAppearance = apearance
    }
}
extension MainTabView {
    
    private func placeholderItemView(title:String) -> some View {
        ScrollView {
            VStack{
                ForEach(0..<120) {_ in
                    Text(title).font(.largeTitle)
                }
            }
        }
        
     
    }
    
     
    private enum Tab {
        case updates, calls, communities,chats
        
        
        fileprivate var icon:String {
            switch self {
                
            case .chats:
                return "message"
                
            case .updates:
                return "inset.filled.circle.dashed"
                
            case .communities:
                return "person.3"
                
            case .calls:
                return "phone"
                
          
            }
        }
        
        fileprivate var title:String {
            switch self {
                
            case .chats:
                return "Message"
                
            case .updates:
                return "Updates"
                
            case .communities:
                return "Communities"
                
            case .calls:
                return "Phone"
                
            }
        }
    }
}

#Preview {
    MainTabView()
}
