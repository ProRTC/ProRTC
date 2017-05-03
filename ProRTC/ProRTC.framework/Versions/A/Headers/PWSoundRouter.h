//
//  PWSoundRouter.h
//  ProRTC
//
//  Copyright (c) 2017 Codiant Software Technologies Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  `PWSoundRoute` represents the audio output port.
 */
typedef NS_ENUM(NSUInteger, PWSoundRoute) {
  
  /**
   *  Route audio to device speaker.
   */
  PWSoundRouteSpeaker,
  
  /**
   *  Route audio to headset (Receiver).
   */
  PWSoundRouteReceiver
};


/**
 *  A helper class of AVAudioSession used to switch between audio output ports.
 */
@interface PWSoundRouter : NSObject

/**
 *  @brief Indicates if headphones are plugged in.
 */
@property (nonatomic, assign, readonly, getter=isHeadsetPluggedIn) BOOL headsetPluggedIn;

/**
 *  @brief Current audio route. Default is `PWSoundRouteSpeaker`.
 */
@property (nonatomic, assign, readonly) PWSoundRoute currentRoute;


/**
 *  Developers cannot initialize this class directly.
 */
- (instancetype)init __attribute__((unavailable("PWSoundRouter cannot be created explicitly.")));

/**
 *  @brief Creates a `PWSoundRouter` shared instance.
 *
 *  @return A `PWSoundRouter` object.
 */
+ (instancetype)shared;

/**
 *  @brief Override audio output port.
 *
 *  @param newRoute The route to override - use `PWSoundRoute` enum.
 */
- (void)overrideToRoute:(PWSoundRoute)newRoute;
  
@end
