.class public Lcom/sec/samsung/gallery/controller/SoundScene;
.super Ljava/lang/Object;
.source "SoundScene.java"


# static fields
.field private static final FEATURE_USE_GRACE_SOUNDSHOT_CHECK:Z

.field private static final PREFKEY_SOUND_SHOT_AUTO_PLAY:Ljava/lang/String; = "soundshotautoplay"

.field private static final TAG:Ljava/lang/String; = "SoundScene"

.field public static isPlayingState:Z

.field private static isSoundShotAutoPlay:Z

.field private static isSoundShotAutoPlayInited:Z

.field public static mEndTime:J

.field private static sInstance:Lcom/sec/samsung/gallery/controller/SoundScene;

.field private static final sUseSoundScene:Z


# instance fields
.field private mAdditionalCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mOnCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSoundScene:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->sUseSoundScene:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceSoundShotCheck:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->FEATURE_USE_GRACE_SOUNDSHOT_CHECK:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/samsung/gallery/controller/SoundScene;->mEndTime:J

    sput-boolean v2, Lcom/sec/samsung/gallery/controller/SoundScene;->isPlayingState:Z

    sput-boolean v2, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundShotAutoPlayInited:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundShotAutoPlay:Z

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/controller/SoundScene$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/SoundScene$1;-><init>(Lcom/sec/samsung/gallery/controller/SoundScene;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mOnCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SoundScene$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/SoundScene$2;-><init>(Lcom/sec/samsung/gallery/controller/SoundScene;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SoundScene$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/SoundScene$3;-><init>(Lcom/sec/samsung/gallery/controller/SoundScene;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/SoundScene;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->avandonAudioFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/SoundScene;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mAdditionalCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/SoundScene;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->stopPlaying()V

    return-void
.end method

.method private avandonAudioFocus()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private checkQdioAndPrepare(Ljava/lang/String;)V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :cond_0
    const/4 v1, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    :cond_1
    invoke-static {p1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->checkAudioInJPEG(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->stopPlaying()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v9, v0, p1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getQdioStartOffset(Ljava/lang/Object;ILjava/lang/String;)J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-static {v9, v0, p1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getQdioLength(Ljava/lang/Object;ILjava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->stopPlaying()V

    :cond_3
    const-string/jumbo v0, "SoundScene"

    const-string/jumbo v10, "make mp"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    cmp-long v0, v2, v12

    if-eqz v0, :cond_4

    cmp-long v0, v4, v12

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    const-string/jumbo v0, "SoundScene"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static copySoundDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-boolean v3, Lcom/sec/samsung/gallery/controller/SoundScene;->sUseSoundScene:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundScene(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundScene(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->copyAllData(Ljava/io/File;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SoundScene"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/controller/SoundScene;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SoundScene;->sInstance:Lcom/sec/samsung/gallery/controller/SoundScene;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/controller/SoundScene;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/SoundScene;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SoundScene;->sInstance:Lcom/sec/samsung/gallery/controller/SoundScene;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/controller/SoundScene;->sInstance:Lcom/sec/samsung/gallery/controller/SoundScene;

    return-object v0
.end method

.method public static isSoundScene(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    sget-boolean v5, Lcom/sec/samsung/gallery/controller/SoundScene;->sUseSoundScene:Z

    if-eqz v5, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/sec/samsung/gallery/controller/SoundScene;->FEATURE_USE_GRACE_SOUNDSHOT_CHECK:Z

    if-eqz v5, :cond_4

    const-string/jumbo v4, "SoundShot_Meta_Info"

    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->hasData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->isValidFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getDataCount(Ljava/io/File;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->isValidFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "SoundShot_000"

    invoke-static {v1, v5}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SoundScene"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "SoundScene"

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSoundShotAutoPlay(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundShotAutoPlayInited:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "soundshotautoplay"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundShotAutoPlay:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundShotAutoPlayInited:Z

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundShotAutoPlay:Z

    return v0
.end method

.method private requestAudioFocus()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method private startPlaying()V
    .locals 8

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SoundScene"

    const-string/jumbo v6, "start playing"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->requestAudioFocus()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mOnCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/samsung/gallery/controller/SoundScene;->isPlayingState:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v0, v4

    sput-wide v6, Lcom/sec/samsung/gallery/controller/SoundScene;->mEndTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SoundScene"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopPlaying()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SoundScene"

    const-string/jumbo v1, "stop playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->avandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->isPlayingState:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public play(Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->sUseSoundScene:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->stopPlaying()V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/SoundScene;->mAdditionalCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SoundScene;->checkQdioAndPrepare(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->startPlaying()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/SoundScene;->sUseSoundScene:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SoundScene;->stopPlaying()V

    goto :goto_0
.end method
