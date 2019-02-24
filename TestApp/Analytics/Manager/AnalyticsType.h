//
//  AnalyticsType.h
//  TestApp
//
//  Created by Станислав Любченко on 18/11/2018.
//  Copyright © 2018 Станислав Любченко. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, AnalyticsType) {
    AnalyticsTypeGA = 1 << 0,
    AnalyticsTypeSopr = 1 << 1,
    AnalyticsTypeAll = AnalyticsTypeGA | AnalyticsTypeSopr
};
