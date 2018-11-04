//
//  QRCodeViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/27.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit
import AVFoundation

class QRCodeViewController: UIViewController {
    @IBOutlet weak var contentViewHeightCons: NSLayoutConstraint!
    
    @IBOutlet weak var scanView: UIImageView!
    @IBOutlet weak var contentLable: UILabel!
    @IBOutlet weak var scanlineTopCons: NSLayoutConstraint!
    @IBOutlet weak var customTabbar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        customTabbar.selectedItem = customTabbar.items?.first
        customTabbar.delegate = self
        
        scanQRCode()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        startAnimation()
    }
    
    private func startAnimation(){
        scanlineTopCons.constant = -300
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 1.0) {
            UIView.setAnimationRepeatCount(Float(CGFloat.greatestFiniteMagnitude))
            self.scanlineTopCons.constant = 300
            self.view.layoutIfNeeded()
        }
    }
    
    private func scanQRCode(){
        if !session.canAddInput(input!) {
            return
        }
        
        if !session.canAddOutput(output) {
            return
        }
        
        session.addInput(input!)
        session.addOutput(output)
        
        output.metadataObjectTypes = output.availableMetadataObjectTypes
        
        output.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        
        view.layer.insertSublayer(previewLayer, at: 0)
        previewLayer.frame = view.bounds
        
        session.startRunning()
    }


    @IBAction func closeItemClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func photoItemClick(_ sender: Any) {
    }
    
    private lazy var input: AVCaptureDeviceInput? = {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        return try? AVCaptureDeviceInput(device: device!)
    }()
    
    private lazy var session : AVCaptureSession = AVCaptureSession()
    
    private lazy var output : AVCaptureMetadataOutput = AVCaptureMetadataOutput()
    private lazy var previewLayer: AVCaptureVideoPreviewLayer = AVCaptureVideoPreviewLayer(session: self.session)
}

extension QRCodeViewController : AVCaptureMetadataOutputObjectsDelegate{
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        print("----" + (metadataObjects.last?.accessibilityValue)!)
//        metadataObjects.last.
        print(metadataObjects.last ?? "=====")
        self.contentLable.text = metadataObjects.last as? String
    }
}

extension QRCodeViewController : UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        contentViewHeightCons.constant = (item.tag == 1) ? 150 : 300;
        
//        view.removea
        scanView.layer.removeAllAnimations()
        
        startAnimation()
    }
    
}
