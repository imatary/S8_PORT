.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "KeyguardEffectViewMassRipple"

.field private static final mRDownPath:Ljava/lang/String; = "/system/media/audio/ui/simple_ripple_down.ogg"

.field private static final mRUpPath:Ljava/lang/String; = "/system/media/audio/ui/simple_ripple_up.ogg"


# instance fields
.field private final ACQUIRE_DVFS:I

.field protected final ANIMATION_DURATION:F

.field final CIRCLE_AFFORDANCE_ROUND_SIZE:F

.field final CIRCLE_ROUND_SIZE:F

.field private final COUNT_ANIMATION:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private DEBUG:Z

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field final MAX_RIPPLE_COUNT:I

.field final MSG_AFFORDANCE_TOUCH:I

.field final MSG_FIRST_TOUCH:I

.field final MSG_TIME_TICK:I

.field private final RELEASE_DVFS:I

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private diffPressTime:J

.field drawRippleCount:I

.field firstTouch_X:I

.field firstTouch_Y:I

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private indexAni:I

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isStartUnlock:Z

.field private isSystemSoundChecked:Z

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

.field private mDistanceRatio:D

.field mHandler:Landroid/os/Handler;

.field mMovingRippleCount:I

.field private mRDownId:I

.field private mRUpId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private massRipple:[Landroid/widget/ImageView;

.field prevMovingDistance:F

.field private prevPressTime:J

.field scale:[Landroid/view/animation/Animation;

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field touchedEventX:F

.field touchedEventY:F

.field typeStorke:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->COUNT_ANIMATION:I

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const-wide v0, 0x3fe99999a0000000L    # 0.800000011920929

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x3ff4ccccc0000000L    # 1.2999999523162842

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->UNLOCK_DRAG_THRESHOLD:D

    const v0, 0x44a28000    # 1300.0f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->ANIMATION_DURATION:F

    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->drawRippleCount:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/high16 v1, 0x42440000    # 49.0f

    aput v1, v0, v3

    const v1, 0x41d4cccd    # 26.6f

    aput v1, v0, v4

    const/high16 v1, 0x42140000    # 37.0f

    aput v1, v0, v7

    const/4 v1, 0x3

    const/high16 v2, 0x41f00000    # 30.0f

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->typeStorke:[F

    const/high16 v0, 0x43910000    # 290.0f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CIRCLE_ROUND_SIZE:F

    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CIRCLE_AFFORDANCE_ROUND_SIZE:F

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->MSG_FIRST_TOUCH:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->MSG_AFFORDANCE_TOUCH:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->MSG_TIME_TICK:I

    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->MAX_RIPPLE_COUNT:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOCK_NUM:I

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQUNCY_NUM:I

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOK_CONTROL:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQ_CONTROL:I

    const v0, 0x88b8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->ACQUIRE_DVFS:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->RELEASE_DVFS:I

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mHandler:Landroid/os/Handler;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->diffPressTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevPressTime:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundNum:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundTime:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->SOUND_ID_DOWN:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->SOUND_ID_UP:I

    sget v0, Lcom/android/keyguard/R$raw;->simple_ripple_down:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRDownId:I

    sget v0, Lcom/android/keyguard/R$raw;->simple_ripple_up:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRUpId:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_mass_ripple_effect_view:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->setLayout()V

    return-void

    :cond_1
    const-string/jumbo v1, "lentislte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x180600

    const v1, 0x11e1a300

    invoke-direct {p0, v4, v0, v4, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->setValueOfDVFS(ZIZI)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method private acquireBooster(I)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->getBestMaxFreq([II)I

    move-result v0

    const-string/jumbo v1, "KeyguardEffectViewMassRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v2, "CPU"

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    aget v0, v3, v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->getBestMaxFreq([II)I

    move-result v0

    const-string/jumbo v1, "KeyguardEffectViewMassRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string/jumbo v2, "GPU"

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    aget v0, v3, v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0
.end method

.method private aquireCpuGpuMaxLock()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->acquireBooster(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->acquireBooster(I)V

    goto :goto_1
.end method

.method private checkSound()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "lockscreen_sounds_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eq v0, v3, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearAllViews()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    goto :goto_1
.end method

.method private getBestMaxFreq([II)I
    .locals 5

    const/4 v3, 0x0

    const v0, 0x7fffffff

    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v3, v4, :cond_0

    return v2

    :cond_0
    aget v1, p1, v3

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v0, :cond_1

    move v1, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Wallpaper"

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private playDragSound(I)V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;I)V

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->run()V

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseCpuGpuMaxLock()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->releaseBooster(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->releaseBooster(I)V

    goto :goto_1
.end method

.method private setLayout()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$anim;->scale_1:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_2:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_3:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_4:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_5:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_6:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_circle_effect_circle_main:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setSound()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "show mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    :goto_1
    aput v1, v0, v5

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    :goto_2
    aput v1, v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v2, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v2, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method private setValueOfDVFS(ZIZI)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    iput p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOCK_NUM:I

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQUNCY_NUM:I

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->clearAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public getCircleSize(IZ)F
    .locals 3

    const/high16 v2, 0x43910000    # 290.0f

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0

    :cond_0
    const/high16 v0, 0x43600000    # 224.0f

    return v0
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x12d

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-nez v4, :cond_4

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eq v4, v8, :cond_f

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_13

    :cond_1
    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v3, "ACTION_UP"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevPressTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->diffPressTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->diffPressTime:J

    const-wide/16 v6, 0x258

    cmp-long v0, v4, v6

    if-gtz v0, :cond_15

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->playSound(I)V

    :cond_2
    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    const-wide v4, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDistanceRatio ove RELEASE threshold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return v1

    :cond_4
    const-string/jumbo v4, "KeyguardEffectViewMassRipple"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insdieViewTouchedEventX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "insdieViewTouchedEventY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "KeyguardEffectViewMassRipple"

    const-string/jumbo v5, "ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    if-eq v4, v7, :cond_8

    :cond_6
    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    :goto_3
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_9

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevPressTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->diffPressTime:J

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->rippeDown(FFIZ)V

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->playSound(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    float-to-int v3, v3

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    float-to-int v3, v3

    iput v3, v0, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_e

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    if-ne v4, v7, :cond_6

    const-string/jumbo v4, "KeyguardEffectViewMassRipple"

    const-string/jumbo v5, "ACTION_DOWN First Touch"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    float-to-int v0, v3

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    goto :goto_3

    :cond_9
    new-instance v0, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    new-array v0, v8, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRDownId:I

    invoke-virtual {v3, v4, v5, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    :goto_5
    aput v3, v0, v2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRUpId:I

    invoke-virtual {v3, v4, v5, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    :goto_6
    aput v3, v0, v1

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v4, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v3, v4, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v4, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v3, v4, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    goto :goto_6

    :cond_e
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-nez v4, :cond_10

    :goto_7
    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->moveToDistanceIs20percent(FF)Z

    move-result v4

    if-nez v4, :cond_11

    :goto_8
    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    const-wide v4, 0x3ff4ccccc0000000L    # 1.2999999523162842

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDistanceRatio ove DRAG threshold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v4, "KeyguardEffectViewMassRipple"

    const-string/jumbo v5, "ACTION_MOVE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->drawRippleCount:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->rippeDown(FFIZ)V

    :goto_9
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->drawRippleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->drawRippleCount:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->playDragSound(I)V

    goto :goto_8

    :cond_12
    invoke-virtual {p0, v0, v3, v8, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->rippeDown(FFIZ)V

    goto :goto_9

    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v3, "ACTION_HOVER_ENTER"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_16

    :cond_14
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_15
    move v0, v2

    goto/16 :goto_1

    :cond_16
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_14

    goto/16 :goto_2
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string/jumbo v1, "KeyguardEffectViewMassRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleTouchEventForPatternLock action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "ACTION_DOWN => ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-nez v0, :cond_2

    :goto_0
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public moveToDistanceIs20percent(FF)Z
    .locals 12

    const/4 v1, -0x1

    const-wide v10, 0x3fdccccccccccccdL    # 0.45

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    float-to-int v1, p1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    float-to-int v2, p2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-nez v2, :cond_2

    :goto_0
    int-to-double v2, v0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v0, v1

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_1
    int-to-double v0, v0

    div-double/2addr v0, v8

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    const-string/jumbo v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent() : threshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mDistanceRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    cmpg-double v0, v0, v10

    if-gez v0, :cond_4

    return v6

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    if-ne v0, v1, :cond_0

    return v6

    :cond_2
    const-string/jumbo v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent() : diffX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",diffY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_5

    iget-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    const/4 v0, 0x1

    return v0

    :cond_5
    return v6
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-nez v2, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    return v5

    :cond_0
    const-string/jumbo v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " originalCircleX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", originalCircleY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " touchedEventX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", touchedEventY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public releaseBooster(I)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    :goto_1
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    :goto_2
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-nez v0, :cond_2

    :goto_0
    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public rippeDown(FFIZ)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, -0x2

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->getCircleSize(IZ)F

    move-result v4

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    new-instance v0, Lcom/android/keyguard/sec/effect/MassRippleImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->typeStorke:[F

    aget v2, v2, p3

    float-to-int v3, v4

    float-to-int v4, v4

    const v5, 0x44a28000    # 1300.0f

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/MassRippleImageView;-><init>(Landroid/content/Context;FIIF)V

    aput-object v0, v6, v7

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    float-to-int v0, p1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    float-to-int v1, p2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const-string/jumbo v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveX X = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "moveY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    rem-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lineStroke = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "indexAni = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aput-object v3, v0, v1

    goto/16 :goto_0
.end method

.method public screenTurnedOff()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->clearAllViews()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->checkSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->setSound()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "== DVFS == new DVFSHandlerForMassRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    const-string/jumbo v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    goto :goto_1
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->rippeDown(FFIZ)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public translatedFromDPToPixel(F)F
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "KeyguardEffectViewMassRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", to Pixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
