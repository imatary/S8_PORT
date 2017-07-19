.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;
    }
.end annotation


# static fields
.field private static final LOCK_SOUND_BLIND:Ljava/lang/String; = "/system/media/audio/ui/blind_lock.ogg"

.field private static final UNLOCK_SOUND_LENS:Ljava/lang/String; = "/system/media/audio/ui/lock_screen_silence.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final DRAG_SOUNT_DISTANCE_THRESHOLD:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private affordanceDelay:J

.field private affordanceRect:Landroid/graphics/Rect;

.field private blindEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private data:Lcom/samsung/android/visualeffect/EffectDataObj;

.field private initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

.field private isAsyncPostExecuted:Z

.field private isCleanUp:Z

.field private isHandleUnlock:Z

.field private isOnConfigurationChanged:Z

.field private isShow:Z

.field private isShowUnlockAffordance:Z

.field private isSystemSoundChecked:Z

.field private isUpdate:Z

.field private isWindowFocused:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string/jumbo v1, "/system/media/audio/ui/blind_lock.ogg"

    const-string/jumbo v2, "/system/media/audio/ui/lock_screen_silence.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DBG:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_UNLOC:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v2, "KeyguardEffectViewBlind : Constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    new-array v3, v5, [Ljava/lang/Void;

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceDelay:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Lcom/samsung/android/visualeffect/EffectView;)Lcom/samsung/android/visualeffect/EffectView;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectDataObj;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->data:Lcom/samsung/android/visualeffect/EffectDataObj;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Lcom/samsung/android/visualeffect/EffectDataObj;)Lcom/samsung/android/visualeffect/EffectDataObj;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->data:Lcom/samsung/android/visualeffect/EffectDataObj;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    return p1
.end method

.method private checkSound()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string/jumbo v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->blind_touch:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->blind_unlock:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->checkSound()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x1

    const-string/jumbo v1, "BlindEffect"

    const-string/jumbo v3, "setBackground"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "BlindEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pBitmap.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pBitmap.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_1
    if-gt v3, v10, :cond_0

    move v1, v2

    :goto_2
    if-le v1, v10, :cond_2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    const-string/jumbo v7, "BlindEffect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pBitmap.getPixel("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/2addr v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3
.end method

.method private stopReleaseSound()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSound()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    goto :goto_0
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
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v3

    :cond_0
    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "isAsyncPostExecuted=false (handleTouchEvent)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->playSound(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->makeSound()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : handleUnlock (exit xml animation removed)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->playSound(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "unlock"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged"

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const-string/jumbo v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyguardEffectViewBlind : onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    return-void
.end method

.method public playLockSound()V
    .locals 2

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOff()V
    .locals 3

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "initAnimationValue"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->makeSound()V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "show"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5

    const/4 v3, 0x1

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceDelay:J

    iput-object p3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

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

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public update()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "BlindEffect"

    const-string/jumbo v1, "KeyguardEffectViewBlind : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "background"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
