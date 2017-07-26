.class public Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;
.super Ljava/lang/Object;
.source "CameraShutterSound.java"


# instance fields
.field private final CAMERA_SHUTTER_OGG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mIsLoaded:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "/system/media/audio/ui/camera_click.ogg"

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->CAMERA_SHUTTER_OGG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mIsLoaded:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundID:I

    :try_start_0
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->semSetStreamType(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v2, "/system/media/audio/ui/camera_click.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init completed"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init failed"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mIsLoaded:Z

    return p1
.end method


# virtual methods
.method public play(F)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mIsLoaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "play : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundID:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method
