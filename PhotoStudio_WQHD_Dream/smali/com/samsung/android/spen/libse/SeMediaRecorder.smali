.class public Lcom/samsung/android/spen/libse/SeMediaRecorder;
.super Ljava/lang/Object;
.source "SeMediaRecorder.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMediaRecorder"


# instance fields
.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

.field private mResultFilePath:Ljava/lang/String;

.field mSepMediaRecorder:Landroid/media/MediaRecorder;

.field private mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mResultFilePath:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;-><init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    new-instance v0, Lcom/samsung/android/spen/libse/SeMediaRecorder$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder$2;-><init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mResultFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->startImpl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-object v0
.end method

.method public static isRecorderWorking()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.media.MediaRecorder"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "semIsRecording"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private printLog(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private setDurationInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    :cond_0
    return-void
.end method

.method private startImpl()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public isPauseSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onPaused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public prepareRecording(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    :try_start_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    const v1, 0xac44

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioSamplingRate(I)V

    const v1, 0x1f400

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioEncodingBitRate(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioChannels(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioSource(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setOutputFormat(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setAudioEncoder(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setMaxDuration(I)V

    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->setDurationInterval(I)V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onResumed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :cond_0
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :cond_0
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_0
    return-void
.end method

.method public setAudioSource(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setMaxDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_0
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_0
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setOutputFormat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mResultFilePath:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;-><init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V

    iput p3, v1, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return v4

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStopped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method
