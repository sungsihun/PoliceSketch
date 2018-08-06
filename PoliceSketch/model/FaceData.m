//
//  FaceData.m
//  PoliceSketch
//
//  Created by NICE on 2018-08-06.
//  Copyright © 2018 Sam Meech-Ward. All rights reserved.
//

#import "FaceData.h"

@implementation FaceData

- (instancetype)init {
    if (self = [super init]) {
        _eyes = [[NSMutableArray alloc] init];
        _nose = [[NSMutableArray alloc] init];
        _mouth = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 5; i++) {
            [_eyes addObject:[UIImage imageNamed:[NSString stringWithFormat:@"eyes_%i", i + 1]]];
            [_nose addObject:[UIImage imageNamed:[NSString stringWithFormat:@"nose_%i", i + 1]]];
            [_mouth addObject:[UIImage imageNamed:[NSString stringWithFormat:@"mouth_%i", i + 1]]];
        }
        
        
        _currentEyes = _eyes[0];
        _currentNose = _nose[0];
        _currentMouth = _mouth[0];
        
        eyeCounter = 0;
        noseCounter = 0;
        mouthCounter = 0;
    }
    return self;
}

- (UIImage *)moveForwardsEyes {
    if (eyeCounter == 4){
        eyeCounter = 0;
    } else {
        eyeCounter++;
    }
    return self.eyes[eyeCounter];
}

- (UIImage *)moveBackwardsEyes {
    if (eyeCounter == 0){
        eyeCounter = self.eyes.count - 1;
    } else {
        eyeCounter--;
    }
    return self.eyes[eyeCounter];
}

- (UIImage *)moveForwardsNose {
    if (noseCounter == 4){
        noseCounter = 0;
    } else {
        noseCounter++;
    }
    return self.nose[noseCounter];
}


- (UIImage *)moveBackwardsNose {
    if (noseCounter == 0){
        noseCounter = self.nose.count - 1;
    } else {
        noseCounter--;
    }
    return self.nose[noseCounter];
}

- (UIImage *)moveForwardsMouth {
    if (mouthCounter == 4){
        mouthCounter = 0;
    } else {
        mouthCounter++;
    }
    return self.mouth[mouthCounter];
}


- (UIImage *)moveBackwardsMouth {
    if (mouthCounter == 0){
        mouthCounter = self.mouth.count - 1;
    } else {
        mouthCounter--;
    }
    return self.mouth[mouthCounter];
}


@end
