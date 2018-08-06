//
//  FaceData.h
//  PoliceSketch
//
//  Created by NICE on 2018-08-06.
//  Copyright © 2018 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceData : NSObject {

NSInteger eyeCounter;
NSInteger noseCounter;
NSInteger mouthCounter;
}

@property (nonatomic) NSMutableArray *eyes;
@property (nonatomic) NSMutableArray *nose;
@property (nonatomic) NSMutableArray *mouth;

@property (nonatomic) UIImage *currentEyes;
@property (nonatomic) UIImage *currentNose;
@property (nonatomic) UIImage *currentMouth;

- (UIImage *)moveForwardsEyes;
- (UIImage *)moveBackwardsEyes;
- (UIImage *)moveForwardsNose;
- (UIImage *)moveBackwardsNose;
- (UIImage *)moveForwardsMouth;
- (UIImage *)moveBackwardsMouth;


@end
