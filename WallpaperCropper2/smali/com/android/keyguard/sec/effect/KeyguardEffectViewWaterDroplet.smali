.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final LOCK_SOUND_LIQUID:Ljava/lang/String; = "/system/media/audio/ui/Liquid_Lock.ogg"

.field private static final UNLOCK_SOUND_LIQUID:Ljava/lang/String; = "/system/media/audio/ui/Liquid_Unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchFlagForMobileKeyboard:Z

.field private mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

.field private mWallpaperPath:Ljava/lang/String;

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string/jumbo v1, "/system/media/audio/ui/Liquid_Lock.ogg"

    const-string/jumbo v2, "/system/media/audio/ui/Liquid_Unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 7

    const v6, 0x9c40

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mWallpaperPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchDownTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchMoveDiffTime:J

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_TAB:I

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_UNLOCK:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->DBG:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->prevOrientation:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "KeyguardEffectViewWaterDroplet Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "WaterDroplet_Keyguard"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->keyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    new-instance v0, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;-><init>(Landroid/content/Context;IILcom/samsung/android/visualeffect/IEffectListener;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    sget v1, Lcom/android/keyguard/R$drawable;->normal_low_z_256:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->setResourcesBitmap1(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    sget v1, Lcom/android/keyguard/R$drawable;->edge_density_720:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->setResourcesBitmap2(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->addView(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-nez v0, :cond_0

    :goto_0
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "useGPUMaxClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", gpuMaxValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "useCPUMinClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cpuMinValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-nez v0, :cond_2

    :goto_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-nez v0, :cond_3

    :goto_3
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    return-void

    :cond_0
    const-string/jumbo v0, "350"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "1300000"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    invoke-static {v0, v1, v2, v6}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    invoke-static {v0, v1, v2, v6}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->registerAccelrometer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->waterdroplet_tap:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playSound() - soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private registerAccelrometer()V
    .locals 3

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "registerAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "WaterDroplet_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pBitmap.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pBitmap.height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "newBitmapDrawable  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const-string/jumbo v1, "WaterDroplet_Keyguard"

    const-string/jumbo v2, "pBitmap  is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private stopReleaseSound()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private unregisterAccelrometer()V
    .locals 2

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "unregisterAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSound()V

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_1
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleTouchEvent return : isUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTouchFlag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v5, :cond_5

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0, p2}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    :cond_3
    const-string/jumbo v1, "WaterDroplet_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_DOWN, mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "WaterDroplet_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleTouchEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_4

    :goto_1
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->playSound(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeSound()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->unlockEffect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldh ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    if-ge p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-lt p2, v0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eq v0, p1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    if-le v0, p2, :cond_5

    :cond_4
    if-ne p1, p3, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->ForceDirty()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged called!!! mTouchFlagForMobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    if-eq v0, p2, :cond_4

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged : hasWindowFocus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-nez v0, :cond_4

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_2

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_2
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->reset()V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_1
.end method

.method public screenTurnedOff()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->screenTurnedOff()V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    goto :goto_1
.end method

.method public screenTurnedOn()V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->screenTurnedOn()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    goto :goto_1
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v3, "setContextualWallpaper"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bmp is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v4, "changeBackground()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "lockscreen_wallpaper_transparent"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_3

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->changeBackground(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    if-nez v0, :cond_2

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v4, "setContextualWallpaper - VignettingEffect is applyed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/VignettingEffect;->applyBlendedFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->changeBackground(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHidden() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "setHidden() - call screenTurnedOn() cause by SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->screenTurnedOn()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeSound()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->showUnlockAffordance(FF)V

    return-void
.end method

.method public update()V
    .locals 3

    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WaterDroplet_Keyguard"

    const-string/jumbo v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->changeBackground(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update()V

    return-void
.end method
