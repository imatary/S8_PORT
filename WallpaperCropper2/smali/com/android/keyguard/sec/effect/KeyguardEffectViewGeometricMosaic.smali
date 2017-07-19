.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    }
.end annotation


# static fields
.field private static final LOCK_SOUND_GEOMETRIC_MOSAIC:Ljava/lang/String; = "/system/media/audio/ui/GeometricMosaic_lock.ogg"

.field public static final MSG_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GeometricMosaic_Keyguard"

.field private static final UNLOCK_SOUND_LENS:Ljava/lang/String; = "/system/media/audio/ui/lock_screen_silence.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private cpuMaxValue:I

.field private dragSoudMinusOffset:F

.field private dragSoudVolume:F

.field private dragStreamID:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isFadeOutSound:Z

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

.field private mImageView:Landroid/widget/ImageView;

.field mLongPressTime:J

.field protected mMsg:Landroid/os/Message;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMaxClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string/jumbo v1, "/system/media/audio/ui/GeometricMosaic_lock.ogg"

    const-string/jumbo v2, "/system/media/audio/ui/lock_screen_silence.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->UNLOCK_SOUND_PLAY_TIME:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_TAB:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_DRAG:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_UNLOCK:I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLongPressTime:J

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "KeyguardEffectViewGeometricMosaic Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->setEffect(I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-nez v0, :cond_1

    :goto_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v5, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    if-eqz v0, :cond_2

    :goto_2
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->gpuMaxValue:I

    const v3, 0x9c40

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->cpuMaxValue:I

    const v3, 0x9c40

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "new SoundHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method private checkSound()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "lockscreen_sounds_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eq v0, v4, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private fadeOutSound()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSound()V

    return-void
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->brilliantcut_tap:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->brilliantcut_drag:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->brilliantcut_unlock:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->checkSound()V

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isSystemSoundChecked:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOUND PLAY soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method private stopReleaseSound()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSound()V

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_1
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    if-ne v2, v1, :cond_8

    :cond_0
    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTouchEvent action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-nez v0, :cond_9

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    return v1

    :cond_2
    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleTouchEvent isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string/jumbo v3, "GeometricMosaic_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleTouchEvent action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_4

    :goto_1
    const-string/jumbo v2, "GeometricMosaic_Keyguard"

    const-string/jumbo v3, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_5

    :goto_2
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "GeometricMosaic_Keyguard"

    const-string/jumbo v3, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->makeSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->checkSound()V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-nez v2, :cond_1

    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLongPressTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    move v0, v1

    :cond_7
    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    goto/16 :goto_0

    :cond_9
    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    goto/16 :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->handleCustomEvent(ILjava/util/HashMap;)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    const v0, 0x3d71a9fc    # 0.059f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->removeMessages(I)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    if-eqz p1, :cond_5

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-nez v0, :cond_2

    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    goto :goto_2
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_1
.end method

.method public screenTurnedOn()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    goto :goto_1
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->makeSound()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "newBitmapDrawable  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "GeometricMosaic_Keyguard"

    const-string/jumbo v1, "originBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->update()V

    return-void
.end method
