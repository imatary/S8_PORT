.class Lcom/sec/android/app/camera/SoundManager$3;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/SoundManager;->loadAllSounds([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/SoundManager;

.field final synthetic val$burstCaptureFPSRange:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/SoundManager;[I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/SoundManager$3;->val$burstCaptureFPSRange:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v1, "Load Camera Sound"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isDestroying()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SoundManager"

    const-string v2, "Don\'t load Camera Sound - camera is destroying"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # setter for: Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;
    invoke-static {v1, v8}, Lcom/sec/android/app/camera/SoundManager;->access$102(Lcom/sec/android/app/camera/SoundManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundLoaded:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$200(Lcom/sec/android/app/camera/SoundManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SoundManager"

    const-string v2, "Don\'t load Camera Sound - sound is already loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # setter for: Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;
    invoke-static {v1, v8}, Lcom/sec/android/app/camera/SoundManager;->access$102(Lcom/sec/android/app/camera/SoundManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    :cond_1
    const-string v1, "SoundManager"

    const-string v2, "Load Camera Sound"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHORT_SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08000b

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080004

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080005

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080006

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v2

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHOT_AND_MORE_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SHOT_MORE_PROCESSING_SOUND_LOW_QUALITY:Z

    if-eqz v1, :cond_3

    const v1, 0x7f080009

    :goto_1
    invoke-virtual {v4, v5, v1, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v2, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->REAR_SELF_SHOT:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->WIDE_SELFIE_OVER_BOUNDARY:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080012

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080001

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080002

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080003

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08000c

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->LONG_EXPOSURE_SHUTTER_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080011

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080010

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->BURST_SHUTTER_LOW_SPEED:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mBurstShutterSoundResId:Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/sec/android/app/camera/SoundManager;->access$500()Landroid/util/SparseIntArray;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/SoundManager$3;->val$burstCaptureFPSRange:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->BURST_SHUTTER_HIGH_SPEED:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mBurstShutterSoundResId:Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/sec/android/app/camera/SoundManager;->access$500()Landroid/util/SparseIntArray;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/SoundManager$3;->val$burstCaptureFPSRange:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    const-string v1, "SoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoundPoolId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const v1, 0x7f080008

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # setter for: Lcom/sec/android/app/camera/SoundManager;->mSoundLoadingThread:Ljava/lang/Thread;
    invoke-static {v1, v8}, Lcom/sec/android/app/camera/SoundManager;->access$102(Lcom/sec/android/app/camera/SoundManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$3;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # setter for: Lcom/sec/android/app/camera/SoundManager;->mSoundLoaded:Z
    invoke-static {v1, v9}, Lcom/sec/android/app/camera/SoundManager;->access$202(Lcom/sec/android/app/camera/SoundManager;Z)Z

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    goto/16 :goto_0
.end method
