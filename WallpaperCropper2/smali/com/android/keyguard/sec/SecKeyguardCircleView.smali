.class public Lcom/android/keyguard/sec/SecKeyguardCircleView;
.super Landroid/widget/LinearLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;,
        Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleView"

.field protected static mLock:Ljava/lang/Object;

.field protected static mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;


# instance fields
.field private final MSG_SHORTCUT_MESSAGE_RESET:I

.field private mAnimatingViews:[Landroid/view/View;

.field protected mArrow:Landroid/widget/ImageView;

.field protected mArrowResId:I

.field protected mContentIcon:Landroid/widget/ImageView;

.field protected mContentResId:I

.field private mCurrentOrientation:F

.field private final mDisableRunnable:Ljava/lang/Runnable;

.field private final mEnableRunnable:Ljava/lang/Runnable;

.field private mHadFocus:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsLandscapeAvailable:Z

.field private mIsScreenOn:Z

.field protected mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

.field protected mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

.field private mToDegrees:F

.field protected mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8a3

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->MSG_SHORTCUT_MESSAGE_RESET:I

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrowResId:I

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentResId:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHadFocus:Z

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getPreviewContainer()Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Landroid/view/OrientationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    return v0
.end method

.method private createOrientationListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method private varargs doTransition(F[Landroid/view/View;)V
    .locals 5

    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    aget-object v2, p2, v0

    if-nez v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardCircleView$5;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;FLandroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private isLandscapeLayoutAvailable()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->shouldEnableScreenRotation()Z

    move-result v3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "accelerometer_rotation"

    const/4 v5, -0x2

    invoke-static {v2, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v2, v1

    :goto_0
    if-nez v3, :cond_2

    :goto_1
    move v0, v1

    :cond_0
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    goto :goto_1
.end method

.method private onScreenTurnedOff()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SecKeyguardCircleView"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private onScreenTurnedOn()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "SecKeyguardCircleView"

    const-string/jumbo v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->createOrientationListener()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private shouldEnableScreenRotation()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.rot_override"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private startStopArrowAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRemoveCircleViewArrow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected checkWorkingSet(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-eq v0, v4, :cond_2

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-ne v0, v4, :cond_5

    :cond_1
    monitor-exit v3

    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-eq v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v5, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->CAMERA:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-eq v0, v5, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewView(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->resetPreviewView()V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-ne v0, v4, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-ne v0, v1, :cond_7

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-nez v0, :cond_a

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_7
    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    :cond_8
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    goto :goto_2

    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eq v0, v2, :cond_8

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_3
.end method

.method protected getShortcutReleasedTextResId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    return v0
.end method

.method protected getShortcutTextResId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    return v0
.end method

.method protected isSecure()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_1
    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string/jumbo v0, "SecKeyguardCircleView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->isLandscapeLayoutAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->createOrientationListener()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "SecKeyguardCircleView"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrowResId:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentResId:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_camera_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 3

    const/16 v2, 0x8a3

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method public onUnlockViewPressed()V
    .locals 3

    const/16 v2, 0x8a3

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setArrowVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    :cond_1
    :goto_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->doTransition(F[Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutTextResId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setShortcutMessage(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public onUnlockViewReleased()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setArrowVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->doTransition(F[Landroid/view/View;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->removeShortcutMessage()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setMessage(IZ)V

    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setShortcutMessageLayout()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->removeShortcutReleaseMessage()V

    goto :goto_2
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->SWIPE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    goto :goto_0
.end method

.method public removeShortcutReleaseMessage()V
    .locals 4

    const/16 v1, 0x8a3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method protected rotateIcon(I)V
    .locals 8

    const/4 v2, 0x0

    const/high16 v7, 0x43870000    # 270.0f

    const/4 v3, 0x1

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    int-to-float v4, p1

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    int-to-float v0, p1

    cmpl-float v5, v4, v1

    if-nez v5, :cond_3

    cmpl-float v5, v0, v7

    if-nez v5, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    sub-float/2addr v0, v6

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_7

    :goto_2
    int-to-float v0, p1

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    :cond_2
    return-void

    :cond_3
    cmpl-float v5, v4, v7

    if-nez v5, :cond_4

    cmpl-float v5, v0, v1

    if-nez v5, :cond_4

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    add-float/2addr v0, v6

    goto :goto_0

    :cond_4
    cmpl-float v5, v4, v0

    if-eqz v5, :cond_0

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    sub-float v0, v4, v0

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cocktail_bar_enabled_180_rotate"

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eq v4, v3, :cond_6

    :goto_3
    if-ne v2, v3, :cond_1

    const/high16 v2, 0x43340000    # 180.0f

    div-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    rem-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    goto :goto_2
.end method

.method public varargs setAnimatingViews([Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    return-void
.end method

.method protected setArrowVisibility(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRemoveCircleViewArrow()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    goto :goto_1
.end method

.method public setHelpText()V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    return-void
.end method

.method public setScrollView(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 0

    return-void
.end method

.method public setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0
.end method
