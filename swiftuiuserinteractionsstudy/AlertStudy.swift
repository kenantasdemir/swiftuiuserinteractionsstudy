//
//  AlertStudy.swift
//  swiftuiuserinteractionsstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct AlertStudy: View {
    @State private var alert = false
    @State private var actionSheet = false
    
    var body: some View {
        VStack(spacing:100){
            Button("Open Alert Dialog"){
                alert = true
            }.alert("Custom Alert",isPresented: $alert,actions:{
                Button("Cancel",role: .cancel,action:{
                    print("Cancel clicked")
                })
                    
                
                Button("OK",role:.destructive,action:{
                    print("OK clicked")
                })
                
                
            },message: {
                Text("Content")
            })
            
            Button("Open Action Sheet"){
                actionSheet = true
            }.actionSheet(isPresented: $actionSheet){
                ActionSheet(title: Text("HEADING"),
                message: Text("MESSAGE"),
                            buttons: [
                                .default(Text("Cancel"),action:{
                                    print("AS Cancel clicked")
                                }),
                                
                                .destructive(Text("OK"),action:{
                                    print("AS OK clicked")
                                })
                            ]
                )
            }
            
            
            Text("Open Context Menu").contextMenu{
                Button{
                    print("Photo taken!")
                }label:{
                    Label("Take photo",systemImage: "camera")
                }
                
                Button{
                    print("Video recorded")
                }label:{
                    Label("Record Video",systemImage: "video")
                }
            }
                    
            
            
        }
    }
}

#Preview {
    AlertStudy()
}
