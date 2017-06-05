.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final LOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Lock_none_effect.ogg"

.field public static final TYPE_SHORTCUT:I = 0x1

.field public static final TYPE_UNLOCK:I = 0x0

.field private static final UNLOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Unlock_none_effect.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private circleEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private mContext:Landroid/content/Context;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private touchHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string/jumbo v1, "/system/media/audio/ui/Lock_none_effect.ogg"

    const-string/jumbo v2, "/system/media/audio/ui/Unlock_none_effect.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v1, :cond_1

    move v0, v1

    :goto_0
    int-to-float v0, v0

    const/high16 v4, 0x44870000    # 1080.0f

    div-float v4, v0, v4

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screenHeight : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ratio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->touchHashmap:Ljava/util/HashMap;

    if-eqz p2, :cond_2

    if-eq p2, v7, :cond_3

    move v0, v3

    :goto_1
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/16 v4, 0x1e

    new-array v4, v4, [I

    sget v5, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_01:I

    aput v5, v4, v3

    sget v5, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_02:I

    aput v5, v4, v7

    sget v5, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_03:I

    aput v5, v4, v8

    const/4 v5, 0x3

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_04:I

    aput v6, v4, v5

    const/4 v5, 0x4

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_05:I

    aput v6, v4, v5

    const/4 v5, 0x5

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_06:I

    aput v6, v4, v5

    const/4 v5, 0x6

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_07:I

    aput v6, v4, v5

    const/4 v5, 0x7

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_08:I

    aput v6, v4, v5

    const/16 v5, 0x8

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_09:I

    aput v6, v4, v5

    const/16 v5, 0x9

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_10:I

    aput v6, v4, v5

    const/16 v5, 0xa

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_11:I

    aput v6, v4, v5

    const/16 v5, 0xb

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_12:I

    aput v6, v4, v5

    const/16 v5, 0xc

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_13:I

    aput v6, v4, v5

    const/16 v5, 0xd

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_14:I

    aput v6, v4, v5

    const/16 v5, 0xe

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_15:I

    aput v6, v4, v5

    const/16 v5, 0xf

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_16:I

    aput v6, v4, v5

    const/16 v5, 0x10

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_17:I

    aput v6, v4, v5

    const/16 v5, 0x11

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_18:I

    aput v6, v4, v5

    const/16 v5, 0x12

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_19:I

    aput v6, v4, v5

    const/16 v5, 0x13

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_20:I

    aput v6, v4, v5

    const/16 v5, 0x14

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_21:I

    aput v6, v4, v5

    const/16 v5, 0x15

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_22:I

    aput v6, v4, v5

    const/16 v5, 0x16

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_23:I

    aput v6, v4, v5

    const/16 v5, 0x17

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_24:I

    aput v6, v4, v5

    const/16 v5, 0x18

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_25:I

    aput v6, v4, v5

    const/16 v5, 0x19

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_26:I

    aput v6, v4, v5

    const/16 v5, 0x1a

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_27:I

    aput v6, v4, v5

    const/16 v5, 0x1b

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_28:I

    aput v6, v4, v5

    const/16 v5, 0x1c

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_29:I

    aput v6, v4, v5

    const/16 v5, 0x1d

    sget v6, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_30:I

    aput v6, v4, v5

    new-instance v5, Lcom/samsung/android/visualeffect/EffectView;

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v5, v8}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    new-instance v5, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v5}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    invoke-virtual {v5, v8}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    iget-object v6, v5, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v0, v6, Lcom/samsung/android/visualeffect/lock/data/CircleData;->circleUnlockMaxWidth:I

    iget-object v0, v5, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->outerStrokeWidth:I

    iget-object v0, v5, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v2, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->innerStrokeWidth:I

    iget-object v0, v5, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput-object v4, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->lockSequenceImageId:[I

    iget-object v0, v5, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_none_arrow:I

    iput v1, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowId:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_shortcut_min_width_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setMinWidthOffset(I)V

    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_shortcut_arrow:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setArrowForButton(I)V

    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestShortcutEffect()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_4
    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border_shortcut:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setOuterCircleType(Z)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->reloadResForOpenTheme()V

    return-void
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Wallpaper"

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private reloadResForOpenTheme()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "reloadResForOpenTheme"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method private setOuterCircleType(Z)V
    .locals 3

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : setOuterCircleType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "setOuterCircleType"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public playLockSound()V
    .locals 2

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    goto :goto_0
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setArrowForButton(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowForButtonId:I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    goto :goto_0
.end method

.method public setMinWidthOffset(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->minWidthOffset:I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    return-void
.end method

.method public show()V
    .locals 2

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    goto :goto_0
.end method

.method public showSwipeCircleEffect(Z)V
    .locals 3

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : showSwipeCircleEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "showSwipeCircleEffect"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public update()V
    .locals 2

    const-string/jumbo v0, "VisualEffectCircleUnlockEffect"

    const-string/jumbo v1, "KeyguardEffectViewNone : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
