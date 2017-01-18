//
//  HGDQPlugin.h
//  HBuilder-Hello
//
//  Created by hgdq on 2017/1/17.
//  Copyright © 2017年 DCloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "PGPlugin.h"
#include "PGMethod.h"

@interface HGDQPlugin : PGPlugin

- (void)hgdqGotoNative:(PGMethod *)commands;
    
@end
