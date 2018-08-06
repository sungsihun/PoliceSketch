//
//  ViewController.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLViewController.h"

@interface LHLViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageViewEyes;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewNose;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewMouth;
@property (nonatomic) FaceData *faceData;

@end

@implementation LHLViewController

- (instancetype)initWithCoder:(NSCoder *) coder {
    if (self = [super initWithCoder:coder]) {
        _faceData = [[FaceData alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _imageViewEyes.image = [self.faceData moveForwardsEyes];
    _imageViewNose.image = [self.faceData moveForwardsNose];
    _imageViewMouth.image = [self.faceData moveForwardsMouth];
}

- (IBAction)backwardsButtonEyes:(id)sender {
    _imageViewEyes.image = [self.faceData moveForwardsEyes];
}

- (IBAction)forwardsButtonEyes:(id)sender {
    _imageViewEyes.image = [self.faceData moveBackwardsEyes];
}

- (IBAction)backwardsButtonNose:(id)sender {
    _imageViewNose.image = [self.faceData moveBackwardsNose];
}

- (IBAction)forwardsButtonNose:(id)sender {
    _imageViewNose.image = [self.faceData moveForwardsNose];
}

- (IBAction)backwardsButtonMouth:(id)sender {
    _imageViewMouth.image = [self.faceData moveBackwardsMouth];
}

- (IBAction)forwardsButtonMouth:(id)sender {
    _imageViewMouth.image = [self.faceData moveForwardsMouth];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
