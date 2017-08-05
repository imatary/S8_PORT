.class public Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;,
        Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-widget-incomingwidget-IncomingCallImageHandle$HandleStateSwitchesValues:[I


# instance fields
.field private final AIRMOTION_SCALE_SIZE_SWEEP1:F

.field private final AIRMOTION_SCALE_SIZE_SWEEP2:F

.field private final AIR_MOTION_SWING_DURATION:I

.field private final AIR_MOTION_SWING_REPEATCOUNT:I

.field private final CHANGE_ARROW_DELAY:I

.field private final CHANGE_ARROW_MSG:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final MAKE_TARGET_DURATION:I

.field private final REMOVE_AIRMOTION_SWEEP:I

.field private mAddExtraTouchArea:Z

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowAnimationIndex:I

.field private mArrowLeftAnimation:[I

.field private mArrowRightAnimation:[I

.field private mContext:Landroid/content/Context;

.field private mDuringSwingAnimation:Z

.field private mEasyTouchModeEnabled:Z

.field private mEnableArrowAnimation:Z

.field private mHandleImageView:Landroid/widget/ImageView;

.field private mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mLeftHandleNormalRes:I

.field private mLeftHandlePressRes:I

.field private mLeftTabNormalRes:I

.field private mLeftTabPressRes:I

.field private mMovingCircle:Landroid/widget/ImageView;

.field private mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

.field mReachedRatio:D

.field mReachedRatioForArrow:D

.field private mRightHandleNormalRes:I

.field private mRightHandlePressRes:I

.field private mRightTabNormalRes:I

.field private mRightTabPressRes:I

.field private mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTabCircle:Landroid/widget/ImageView;

.field private mTag:Ljava/lang/String;

.field private mTargetCircle:Landroid/widget/ImageView;

.field private mTouchAreaBottomExtra:I

.field private mTouchAreaLeftExtra:I

.field private mTouchAreaRightExtra:I

.field private mTouchAreaTopExtra:I

.field private useExternalArrowImage:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-widget-incomingwidget-IncomingCallImageHandle$HandleStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->-com-android-phone-widget-incomingwidget-IncomingCallImageHandle$HandleStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->-com-android-phone-widget-incomingwidget-IncomingCallImageHandle$HandleStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->values()[Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->-com-android-phone-widget-incomingwidget-IncomingCallImageHandle$HandleStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x12c

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->useExternalArrowImage:Z

    iput-boolean v5, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    iput v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    iput v4, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    const v0, 0x7f0200bb

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleNormalRes:I

    const v0, 0x7f0200b9

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleNormalRes:I

    const v0, 0x7f0200f5

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v0, 0x7f0200bc

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandlePressRes:I

    const v0, 0x7f0200ba

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mRightHandlePressRes:I

    const v0, 0x7f0200f6

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v0, 0x7f0201c3

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v0, 0x7f020017

    const v1, 0x7f020018

    const v2, 0x7f020019

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    const v0, 0x7f020041

    const v1, 0x7f020042

    const v2, 0x7f020043

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    iput v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    iput v4, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_DURATION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_REPEATCOUNT:I

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    const v0, 0x3f4f5c29    # 0.81f

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    iput v4, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->REMOVE_AIRMOTION_SWEEP:I

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z

    iput-boolean v5, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    new-instance v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;-><init>(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->MAKE_TARGET_DURATION:I

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    iput v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    iput v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    iput v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    iput v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    const-wide v0, 0x3feff7ced916872bL    # 0.999

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-direct {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->init()V

    return-void
.end method

.method private handleEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    :cond_1
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private init()V
    .locals 7

    const v6, 0x7f0201c1

    const v5, 0x7f0200f5

    const v4, 0x7f0200bb

    const/4 v2, 0x1

    const v3, 0x7f0200f4

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f100155

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const v1, 0x7f100153

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const v1, 0x7f100156

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v1, 0x7f100154

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f100158

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    :goto_0
    new-instance v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$2;

    invoke-direct {v1, p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$2;-><init>(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f100158

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f0201c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200b9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f100157

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private showTarget(F)V
    .locals 10

    const/4 v9, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const v1, 0x3e99999a    # 0.3f

    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v5, v2, v3

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v2, v3

    move v2, p1

    move v3, v1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateArrowLayout(Z)V
    .locals 8

    const v7, 0x7f0c01c2

    const v6, 0x7f0c01c1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    :goto_0
    const-string/jumbo v4, "cover_incall"

    iget-object v5, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "cover_endcall"

    iget-object v5, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setArrowTopMargin(I)V

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setArrowBottomMargin(I)V

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setArrowRightMargin(I)V

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setArrowLeftMargin(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    goto :goto_0
.end method

.method private updateMovingCircle(FF)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMovingCircle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addExtraTouchArea()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    return-void
.end method

.method public enableArrowAnimation(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enableArrowAnimation: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    return-void
.end method

.method public getTargetProximityRatio(FF)D
    .locals 14

    iget-object v9, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    iget-object v9, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    iget-object v9, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    int-to-float v9, v4

    sub-float v9, p1, v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    int-to-float v9, v5

    sub-float v9, p2, v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double v10, v0, v0

    mul-double v12, v2, v2

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    int-to-double v10, v8

    div-double v10, v6, v10

    return-wide v10
.end method

.method public hideArrowHandleInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_0
    return-void
.end method

.method public isInTabCircle(Landroid/view/MotionEvent;)Z
    .locals 23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v19, "accessibility"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v5, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v18

    div-int/lit8 v4, v18, 0x2

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    div-int/lit8 v8, v18, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    div-int/lit8 v9, v18, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    div-int/lit8 v10, v18, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    div-int/lit8 v7, v18, 0x5

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v15, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v18

    div-int/lit8 v14, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v12, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v18

    div-int/lit8 v11, v18, 0x2

    new-instance v13, Landroid/graphics/Rect;

    sub-int v18, v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, v8

    sub-int v18, v18, v5

    sub-int v19, v14, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v19, v19, v10

    sub-int v19, v19, v4

    add-int v20, v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v9

    add-int v20, v20, v5

    add-int v21, v14, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v7

    add-int v21, v21, v4

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    return v18
.end method

.method public isThresholdReached(FF)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "IncomingCallImageHandle"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needToHideArrow(FF)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "onFinishInflate"

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHoverEvent : event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    iget-boolean v2, v2, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, " on intercept touch "

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "easy_interaction"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, " tts n easy mode is on "

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouchEvent : event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->isThresholdReached(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    sget-object v2, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$3;

    invoke-direct {v3, p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$3;-><init>(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->needToHideArrow(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->hideArrowHandleInternal()V

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->updateMovingCircle(FF)V

    goto :goto_0
.end method

.method public removeArrowMsg()V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public setArrowBottomMargin(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setArrowLeftMargin(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setArrowRightMargin(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setArrowTopMargin(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setEasyTouchModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    return-void
.end method

.method public setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    return-void
.end method

.method public setParent(Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    return-void
.end method

.method public setWidgetTypeTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    return-void
.end method

.method public updateArrowHandle()V
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->-getcom-android-phone-widget-incomingwidget-IncomingCallImageHandle$HandleStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v3}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->updateArrowLayout(Z)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateHandle()V
    .locals 10

    const/16 v5, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    const/4 v9, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIncomingCallImageWidget state : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->-getcom-android-phone-widget-incomingwidget-IncomingCallImageHandle$HandleStateSwitchesValues()[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v3}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->useExternalArrowImage:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->updateArrowHandle()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_3
    iget v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v1, v9, :cond_5

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleNormalRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleNormalRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleNormalRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v1, v9, :cond_b

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandlePressRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a
    :goto_1
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v1, v3

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v1, v3

    const v1, 0x3e4ccccd    # 0.2f

    const v3, 0x3e4ccccd    # 0.2f

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_d

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandlePressRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_d
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mRightHandlePressRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_f
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    const v1, 0x3f266666    # 0.65f

    invoke-direct {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->showTarget(F)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    const v1, 0x3f4f5c29    # 0.81f

    invoke-direct {p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->showTarget(F)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
