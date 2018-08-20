//
//  Bezier.swift
//  Path
//
//  Created by Snoopy on 20/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class Bezier: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = .lightGray
    }
    
    func rectangle() -> UIBezierPath {
        return UIBezierPath(rect: bounds)
    }
    
    func rectangleAlt() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: frame.width, y: 0))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height))
        path.addLine(to: CGPoint(x: 0, y: frame.height))
        path.close()
        return path
    }
    
    func triangle() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: frame.height))
        path.addLine(to: CGPoint(x: frame.width / 2, y: 0))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height))
        path.close()
        return path
    }
    
    func rectangleArr() -> UIBezierPath {
        return UIBezierPath(roundedRect: bounds, cornerRadius: 75)
    }
    
    func rectangleArrAlt() -> UIBezierPath {
        return UIBezierPath(roundedRect: bounds, byRoundingCorners: [.bottomLeft,.bottomRight,.topRight], cornerRadii: CGSize(width: 50, height: 50))
    }
    
    func ovale() -> UIBezierPath {
        return UIBezierPath(ovalIn: bounds)
    }
    
    func demi() -> UIBezierPath {
        let radian = CGFloat(Double.pi / 180)// 1 degré
        return UIBezierPath(arcCenter: CGPoint(x: frame.width / 2, y: frame.height), radius: frame.height / 2, startAngle: 180 * radian, endAngle: 0 * radian, clockwise: true)
    }
    
    func ligne() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: frame.height / 2))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height / 2))
        path.close()
        return path
    }
    
    func ligneCourbe() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: frame.height / 2))
        path.addCurve(to: CGPoint(x: frame.width, y: frame.height / 2), controlPoint1: CGPoint(x: frame.width / 3, y: frame.height / 2 - 50), controlPoint2: CGPoint(x: frame.width / 3 * 2, y: frame.height / 2 + 50))
        path.close()
        return path
    }
    
    override func draw(_ rect: CGRect) {
        // code pour le bezier
        //let path = ligneCourbe()
        //let path = ligne()
        //let path = demi()
        let path = ovale()
        //let path = rectangleArrAlt()
        //let path = rectangleArr()
        //let path = triangle()
        //let path = rectangle()
        //let path = rectangleAlt()
        UIColor.red.setFill()
        path.fill()
        
        UIColor.black.setStroke()
        path.stroke()
        
        // creation d'un layer
        let monLayer = CAShapeLayer()
        monLayer.path = path.cgPath
        monLayer.fillColor = UIColor.blue.cgColor
        monLayer.lineWidth = 2
        monLayer.strokeColor = UIColor.cyan.cgColor
        //self.layer.addSublayer(monLayer)
        
        // creation d'un masque
        self.layer.mask = monLayer
        
        
        
        
    }

}
