//
//  DistanceHelper.swift
//  RevealingTableViewCell
//
//  Created by sovata on 05/04/2017.
//  Copyright © 2017 Nikolay Suvandzhiev. All rights reserved.
//

import QuartzCore

internal enum DistanceHelper
{
    internal static func getClosest_X_AlsoConsideringVelocity_1D(originX: CGFloat,
                                                        velocityDx: CGFloat,
                                                        arrayOfX_toCheck: [CGFloat]
        ) -> CGFloat
    {
        guard arrayOfX_toCheck.count > 0 else
        {
            fatalError("WARNING: Not allowed to pass an empty array for `arrayOfX_toCheck`")
        }
        
        // The higher this is, the harder the user has to 'throw' the view to a particular position for it to 'snap' to it
        let factorToDivideVelocityBy: CGFloat = 20.0
        
        let pointOfOriginPlusScaledVelocity:CGFloat = originX + velocityDx/factorToDivideVelocityBy
        
        
        var smallestDistanceSoFar: CGFloat = CGFloat.infinity
        var answer_X_soFar: CGFloat = arrayOfX_toCheck[0]
        
        for X_toCheck in arrayOfX_toCheck
        {
            let distanceNonSquaredRooted = abs(pointOfOriginPlusScaledVelocity - X_toCheck)
            
            if distanceNonSquaredRooted < smallestDistanceSoFar
            {
                smallestDistanceSoFar = distanceNonSquaredRooted
                answer_X_soFar = X_toCheck
            }
        }
        
        return answer_X_soFar
    }
    
}
