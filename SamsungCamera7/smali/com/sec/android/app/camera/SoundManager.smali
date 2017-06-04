.class public Lcom/sec/android/app/camera/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field private static final NUM_SHUTTER_SOUND_CHANNELS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SoundManager"

.field private static final mBurstShutterSoundResId:Landroid/util/SparseIntArray;


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mIsSoundeManagerInitialized:Z

.field private mSoundLoaded:Z

.field private mSoundLoadingThread:Ljava/lang/Thread;

.field private mSoundLoop:I

.field private mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private final mStreamId:[I

.field private mStreamVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/SoundManager$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/SoundManager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/SoundManager;->mBurstShutterSoundResId:Landroid/util/SparseIntArray;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mStreamId:[I

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoaded:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/SoundManager;->mIsSoundeManagerInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/sec/android/app/camera/SoundManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/SoundManager$2;-><init>(Lcom/sec/android/app/camera/SoundManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/SoundManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/SoundManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/SoundManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/SoundManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/SoundManager;->mBurstShutterSoundResId:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/SoundManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mStreamId:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/SoundManager;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/SoundManager;->mStreamVolume:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/SoundManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoop:I

    return v0
.end method

.method private loadDefaultSounds()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08000a

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f080000

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080002

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080003

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    :cond_0
    return-void
.end method


# virtual methods
.method protected abandonAudioFocus()V
    .locals 2

    const-string v0, "SoundManager"

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method protected clear()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected initializeAudioZoom(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_zoom_max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method protected initializeSoundPool()V
    .locals 9

    const/4 v4, 0x5

    const/4 v2, 0x1

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const-string v3, "CAMERA"

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-static {v4}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    :goto_0
    invoke-virtual {v8}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/sec/android/app/camera/SoundManager;->loadDefaultSounds()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/SoundManager;->mIsSoundeManagerInitialized:Z

    return-void

    :cond_0
    invoke-virtual {v8, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0
.end method

.method protected isAudioRecordingActive()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v0

    return v0
.end method

.method protected isMusicActive()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method protected isSoundLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoaded:Z

    return v0
.end method

.method protected isSoundManagerInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/SoundManager;->mIsSoundeManagerInitialized:Z

    return v0
.end method

.method protected loadAllSounds([I)V
    .locals 3

    const-string v0, "SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAllSounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/SoundManager$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/SoundManager$3;-><init>(Lcom/sec/android/app/camera/SoundManager;[I)V

    const-string v2, "SoundLoadingThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected playSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v0

    const-string v1, "SoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSound - soundId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", loop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    const-string v1, "SoundManager"

    const-string v2, "playSound - mSoundPool is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "SoundManager"

    const-string v2, "stopSound - can\'t stop sound"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    if-ne p1, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/SoundManager;->mStreamVolume:F

    :goto_1
    iput p2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoop:I

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/sec/android/app/camera/SoundManager$4;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/SoundManager$4;-><init>(Lcom/sec/android/app/camera/SoundManager;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/SoundManager;->mStreamVolume:F

    goto :goto_1
.end method

.method protected releaseSoundPool()V
    .locals 7

    const/4 v6, 0x0

    const-string v2, "SoundManager"

    const-string v3, "releaseSoundPool"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SoundManager"

    const-string v3, "awaitTermination of SoundPlayThreadPool interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/SoundManager;->mIsSoundeManagerInitialized:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoaded:Z

    return-void
.end method

.method protected requestAudioFocus()V
    .locals 4

    const-string v0, "SoundManager"

    const-string v1, "requestAudioFocus"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method protected requestTransientAudioFocus()V
    .locals 3

    const/4 v2, 0x3

    const-string v0, "SoundManager"

    const-string v1, "requestTransientAudioFocus"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method protected setAudioZoomValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method protected stopSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v0

    const-string v1, "SoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSound - soundId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    const-string v1, "SoundManager"

    const-string v2, "stopSound - mSoundPool is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundLoaded:Z

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "SoundManager"

    const-string v2, "stopSound - can\'t stop sound"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/sec/android/app/camera/SoundManager$5;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/SoundManager$5;-><init>(Lcom/sec/android/app/camera/SoundManager;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected switchAudioChannelDirection(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "tx_inversion=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "tx_inversion=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method
