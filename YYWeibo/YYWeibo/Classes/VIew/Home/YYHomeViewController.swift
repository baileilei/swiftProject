//
//  YYHomeViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYHomeViewController: YYVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if isLogin {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", target: self, imageName: "navigationbar_friendattention", action: #selector(swipe))
            navigationItem.rightBarButtonItem =  UIBarButtonItem(title: "", target: self, imageName: "navigationbar_pop", action: #selector(swipe))
//            tabBarItem.title = "首页"
            title = "首页"
            
           
            
            YYLog(message: childViewControllers)
        }else{
            vistorView?.updateVisitorInfo(message: nil, imageName: nil)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let titleBtn : YYTitleButton = YYTitleButton()
        titleBtn.setTitle("小马哥", for: .normal)
        titleBtn.sizeToFit()
        titleBtn.addTarget(self, action: #selector(titleBtnClick), for: .touchUpInside)
        navigationItem.titleView = titleBtn
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", target: self, imageName: "navigationbar_friendattention", action: #selector(swipe))
        navigationItem.rightBarButtonItem =  UIBarButtonItem(title: "", target: self, imageName: "navigationbar_pop", action: #selector(swipe))

    }
    
    @objc func titleBtnClick(btn: YYTitleButton){
        YYLog(message: "haha")
        btn.isSelected = !btn.isSelected
        
        let sb = UIStoryboard(name: "Popover", bundle: nil)
        guard let popVC = sb.instantiateInitialViewController() else {
            return
        }
        
        popVC.transitioningDelegate = self as UIViewControllerTransitioningDelegate
        popVC.modalPresentationStyle = UIModalPresentationStyle.custom
        
        present(popVC, animated: false, completion: nil)
        
    }
    
    @objc func swipe() {
        YYLog(message: "")
        let sb = UIStoryboard(name: "QRcode", bundle: nil)
        let qrCodeVC = sb.instantiateInitialViewController()!
        
        present(qrCodeVC, animated: true, completion: nil)
        
        
    }


}

extension YYHomeViewController : UIViewControllerTransitioningDelegate{
    
    //该方法用于返回一个负责转场动画的对象 ---可以在该对象中控制弹出视图的尺寸等。
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
//        return presentationController(forPresented:presenting:source:)
        return YYPresentationController(presentedViewController:presented , presenting: presenting)
    }
    
    //该方法用于返回一个负责转场如何出现的对象
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        return self as UIViewControllerAnimatedTransitioning
    }
    
    //该方法用于返回一个负责转场如何消失的对象
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        
        return self as UIViewControllerAnimatedTransitioning
    }
}

extension YYHomeViewController : UIViewControllerAnimatedTransitioning{
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 998
    }
    
    //专门用于管理modal如何展现和消失的， 无论是展现还是消失都会调用该方法
    /*
     注意点：只要我们实现了这个代理方法，那么系统就不会再有默认的动画了。
     也就是说，默认的modal从下至上的移动，系统就不再帮我们添加了，所有的动画操作都需要我们自己实现，包括需要展现的视图也需要我们自己添加到容器视图上(containerView)
     */
    //transitionContext： 所有动画需要的东西都保存在上下文中， 换而言之，就是可以通过transitionContext获取都我们所关注的视图等。
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
//        let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)
//        let fromVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)
//        YYLog(message: toVC)
//        YYLog(message: fromVC)
//        
//        //将需要弹出的视图添加到containerView上
//        guard let toView = transitionContext.view(forKey: UITransitionContextViewKey.to) else {
//            return
//        }
//        
////        toView.transform = cgaffinetransform(glScalef(<#T##x: GLfloat##GLfloat#>, <#T##y: GLfloat##GLfloat#>, <#T##z: GLfloat##GLfloat#>))
//        toView.transform = CGAffineTransform(scaleX: 1.0,y: 0.0)
////        toView.layer.anchorPoint = CGPoint(x: 0.5, y: 0.0)
//        //面试题: layer的锚点怎么用的。
////       UIView.animate(withDuration: <#T##TimeInterval#>, delay: <#T##TimeInterval#>, usingSpringWithDamping: <#T##CGFloat#>, initialSpringVelocity: <#T##CGFloat#>, options: <#T##UIViewAnimationOptions#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
//        
//        
//        
//        UIView.animate(withDuration: 10.0, delay: 0, options: .allowAnimatedContent, animations: {
//            toView.transform = CGAffineTransform.identity
//            
//        }) { (_) in
//            transitionContext.completeTransition(true)
//        }
    }
    
    
}
