.class public Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;
.super Ljava/lang/Object;
.source "AsyncConnectTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl0;,
        Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->handlePlay()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->handlePrepare(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->handleStop()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createMediaPlayer(I)Landroid/media/MediaPlayer;
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v6, 0x0

    return-object v3

    :catch_0
    move-exception v7

    const-string/jumbo v1, "AsyncConnectTonePlayer"

    const-string/jumbo v2, "close failed:"

    invoke-static {v1, v2, v7, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    if-nez p1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_1
    :goto_1
    const-string/jumbo v1, "support_function_sound_tuning"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v9

    invoke-virtual {v0, v9, v9}, Landroid/media/MediaPlayer;->setVolume(FF)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playMediaTone->Call Connection Gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v1, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl0;-><init>(Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v1, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl1;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$-android_media_MediaPlayer_createMediaPlayer_int_mediaType_LambdaImpl1;-><init>(Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    const/4 v6, 0x0

    :cond_3
    return-object v0

    :cond_4
    if-ne p1, v10, :cond_1

    const/16 v1, 0xb

    :try_start_4
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_5
    const-string/jumbo v1, "AsyncConnectTonePlayer"

    const-string/jumbo v2, "create failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v7, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    const-string/jumbo v1, "AsyncConnectTonePlayer"

    const-string/jumbo v2, "close failed:"

    invoke-static {v1, v2, v7, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_2

    :catch_3
    move-exception v7

    const-string/jumbo v1, "AsyncConnectTonePlayer"

    const-string/jumbo v2, "close failed:"

    invoke-static {v1, v2, v7, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_3
    const/4 v6, 0x0

    throw v1

    :catch_4
    move-exception v7

    const-string/jumbo v2, "AsyncConnectTonePlayer"

    const-string/jumbo v3, "close failed:"

    invoke-static {v2, v3, v7, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_3
.end method

.method private getNewHandler()Landroid/os/Handler;
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "connectTone-player"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer$1;-><init>(Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;Landroid/os/Looper;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handlePlay()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const-string/jumbo v0, "Telephony"

    const-string/jumbo v1, "AsyncConnectTonePlayer : play"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private handlePrepare(Lcom/android/internal/os/SomeArgs;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->createMediaPlayer(I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method private handleStop()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "Stop connectTone."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "Handler cleared."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AsyncConnectTonePlayer"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private postMessage(IZLcom/android/internal/os/SomeArgs;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->getNewHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skipped because there is no handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method synthetic -com_android_phone_operator_sec_AsyncConnectTonePlayer_lambda$1(Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string/jumbo v0, "Telephony"

    const-string/jumbo v1, "AsyncConnectTonePlayer : onCompletion"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic -com_android_phone_operator_sec_AsyncConnectTonePlayer_lambda$2(Landroid/media/MediaPlayer;II)Z
    .locals 2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string/jumbo v0, "Telephony"

    const-string/jumbo v1, "AsyncConnectTonePlayer : OnError"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public play()V
    .locals 3

    const-string/jumbo v0, "Posting play."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->log(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->postMessage(IZLcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method public prepare(I)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "Posting Prepare."

    invoke-direct {p0, v1}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-direct {p0, v2, v2, v0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->postMessage(IZLcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string/jumbo v0, "Posting stop."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->log(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->postMessage(IZLcom/android/internal/os/SomeArgs;)V

    return-void
.end method
