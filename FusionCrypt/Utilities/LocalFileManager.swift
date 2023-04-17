//
//  LocalFileManager.swift
//  FusionCrypt
//
//  Created by qihuiyu on 17/04/2023.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    
    private init() { }
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        
        // create folder
        createFolderIfNeed(folderName: folderName)
        
        // get path for image
        guard let data = image.pngData(),
              let url = getURLForImage(imageName, folderName)
              else { return }
        
        // save image to path
        do {
            try data.write(to: url)
        } catch let error {
            print("Error saving image. ImageName: \(imageName). \(error)")
        }
    }
    
    func getImage(imageName: String, folderName: String) -> UIImage? {
        guard
            let url = getURLForImage(imageName, folderName),
                FileManager.default.fileExists(atPath: url.path) else {
            return nil
        }
        return UIImage(contentsOfFile: url.path)
    }
    
    private func createFolderIfNeed(folderName: String) {
        guard let url = getURLForFolder(folderName) else { return }
        if !FileManager.default.fileExists(atPath: url.path) {
            do {
                try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true)
            } catch let error {
                print("Error creating director, FolderName: \(folderName). \(error)")
            }
        }
    }
    
    private func getURLForFolder(_ folderName: String) -> URL? {
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first
        else { return nil }
        return url.appendingPathComponent(folderName)
    }
    
    private func getURLForImage(_ imageName: String, _ folderName: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName)
        else { return nil }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
}
