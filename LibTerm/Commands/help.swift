//
//  help.swift
//  LibTerm
//
//  Created by Adrian Labbe on 9/30/18.
//  Copyright © 2018 Adrian Labbe. All rights reserved.
//

import Foundation
import ios_system

/// The `help` command.
func helpMain(argc: Int, argv: [String], shell: LibShell) -> Int32 {
    
    var helpText = ""
    for command in Commands {
        if command != Commands.last {
            helpText += "\(command.commandName), "
        } else {
            helpText += "\(command.commandName)\n"
        }
    }
    
    shell.io?.outputPipe.fileHandleForWriting.write(helpText)
    
    return 0
}
