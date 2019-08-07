//
//  ScannerViewController.swift
//  guilt-tripper
//
//  Created by Student on 07/08/2019.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import AVFoundation

class Scanner: NSObject
{
    private var viewController: UIViewController
    private var captureSession : AVCaptureSession?
    private var codeOutputHandler: (_ code: String) -> Void
    
    private func createCaptureSession() ->AVCaptureSession?
    {
        
    }
    
    let captureSession = AVCaptureSession()
    guard let captureDevice = AVCaptureDevice.default(for: .video) else {
    return nil
    }
    
    do
    {
    if captureSession.canAddInput(deviceInput)
    {
    captureSession.addInput(deviceInput)
    }
    else
    {
    return nil
    }
    
    if captureSession.canAddOutput(metaDataOutput)
    {
    captureSession.addOutput(metaDataOutput)
    if let viewController = self.viewController as? AVCaptureMetadataOutputObjectsDelegate
    {
    metaDataOutput.setMetadataObjectsDelegate(viewController,
                                                queue: DispatchQueue.main)
    metaDataOutput.metadataObjectTypes = self.metaObjectTypes()
    }
    
    }
    else
    {
    return nil
    }
    }
    catch
    {
    return nil
    }
    return captureSession
    
    let deviceInput = try AVCaptureDeviceInput(device: captureDevice)
    let metaDataOutput = AVCaptureMetadataOutput()
}
