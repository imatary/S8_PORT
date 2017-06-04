.class public Lcom/gdg/recordinglib/GameRecordingMgr;
.super Ljava/lang/Object;
.source "GameRecordingMgr.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAudioUtil:Lcom/gdg/recordinglib/v2/audio/AudioUtil;

.field private mCallStop:Z

.field private mCallback:Lcom/gdg/recordinglib/ICallback;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

.field private mMuxerStartTime:J

.field private mMuxerStarted:Z

.field private mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

.field private mStorageException:Lcom/gdg/recordinglib/v2/exception/StorageException;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "GameRecordingMgr"

    sput-object v0, Lcom/gdg/recordinglib/GameRecordingMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mAudioUtil:Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/gdg/recordinglib/GameRecordingMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/gdg/recordinglib/GameRecordingMgr;->removeExceptionHandling()V

    return-void
.end method

.method static synthetic access$100(Lcom/gdg/recordinglib/GameRecordingMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMuxerStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/gdg/recordinglib/GameRecordingMgr;)J
    .locals 2

    iget-wide v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMuxerStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/gdg/recordinglib/GameRecordingMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/gdg/recordinglib/GameRecordingMgr;->stopGameRecorder()V

    return-void
.end method

.method static synthetic access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mCallback:Lcom/gdg/recordinglib/ICallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/gdg/recordinglib/GameRecordingMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mCallStop:Z

    return p1
.end method

.method private addExceptionHandling()V
    .locals 3

    new-instance v0, Lcom/gdg/recordinglib/v2/exception/StorageException;

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    invoke-direct {v0, p0, v1, v2}, Lcom/gdg/recordinglib/v2/exception/StorageException;-><init>(Lcom/gdg/recordinglib/GameRecordingMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mStorageException:Lcom/gdg/recordinglib/v2/exception/StorageException;

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mStorageException:Lcom/gdg/recordinglib/v2/exception/StorageException;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Lcom/gdg/recordinglib/v2/exception/StorageException;->setPeriodTime(I)V

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mStorageException:Lcom/gdg/recordinglib/v2/exception/StorageException;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/exception/StorageException;->start()V

    return-void
.end method

.method private handlingExceptionSystemAudioSupported(ILcom/gdg/recordinglib/ICallback;)Z
    .locals 2

    invoke-static {}, Lcom/gdg/recordinglib/GameRecorderUtil;->getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gdg/recordinglib/GameRecorderUtil;->isSystemAudioSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_IS_NOT_SUPPORTED:I

    iput v1, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->endRecording()V

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    invoke-interface {p2, v0}, Lcom/gdg/recordinglib/ICallback;->executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private prepareScreenSize(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mWidth:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mHeight:I

    return-void
.end method

.method private removeExceptionHandling()V
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mStorageException:Lcom/gdg/recordinglib/v2/exception/StorageException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mStorageException:Lcom/gdg/recordinglib/v2/exception/StorageException;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/exception/StorageException;->release()V

    :cond_0
    return-void
.end method

.method private stopGameRecorder()V
    .locals 2

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->stop()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/gdg/recordinglib/GameRecordingMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopGameRecorder(), mRecorder is null"

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public _startRecord(Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->beginRecording()V

    iput-boolean v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMuxerStarted:Z

    iput-object p1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iput-object p3, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mCallback:Lcom/gdg/recordinglib/ICallback;

    iget-object v1, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->screenSize:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gdg/recordinglib/GameRecordingMgr;->prepareScreenSize(Ljava/lang/String;)V

    new-instance v1, Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-direct {v1, p1}, Lcom/gdg/recordinglib/v2/GameRecorder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mWidth:I

    iget v3, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/gdg/recordinglib/v2/GameRecorder;->setVideoSize(II)V

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget v2, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->bitrate:I

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->setBitrate(I)V

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget v2, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->displayFrameRate:I

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->setVideoFrameRate(I)V

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v2, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v2, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->setPackageName(Ljava/lang/String;)V

    new-instance v1, Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-direct {v1, p1, v2}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;-><init>(Landroid/content/Context;Lcom/gdg/recordinglib/v2/GameRecorder;)V

    iput-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mAudioUtil:Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mAudioUtil:Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    invoke-virtual {v1}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->initialize()V

    sget-object v1, Lcom/gdg/recordinglib/GameRecordingMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", GameSound = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recSystemAudio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Mic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recMic:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recSystemAudio:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/gdg/recordinglib/GameRecorderDefine$AudioSource;->SYSTEM:I

    invoke-direct {p0, v1, p3}, Lcom/gdg/recordinglib/GameRecordingMgr;->handlingExceptionSystemAudioSupported(ILcom/gdg/recordinglib/ICallback;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v0, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recMic:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v1, v4}, Lcom/gdg/recordinglib/v2/GameRecorder;->setAudioOption(I)V

    :goto_1
    invoke-direct {p0}, Lcom/gdg/recordinglib/GameRecordingMgr;->addExceptionHandling()V

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v1}, Lcom/gdg/recordinglib/v2/GameRecorder;->start()V

    iput-boolean v4, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMuxerStarted:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMuxerStartTime:J

    iget-boolean v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mCallStop:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->endRecording()V

    invoke-direct {p0}, Lcom/gdg/recordinglib/GameRecordingMgr;->stopGameRecorder()V

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_TIME:I

    iput v2, v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mCallback:Lcom/gdg/recordinglib/ICallback;

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    invoke-interface {v1, v2}, Lcom/gdg/recordinglib/ICallback;->executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    iput-boolean v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mCallStop:Z

    iput-boolean v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mMuxerStarted:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->setAudioOption(I)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recMic:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/gdg/recordinglib/GameRecorderUtil;->getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;

    move-result-object v1

    sget v2, Lcom/gdg/recordinglib/GameRecorderDefine$AudioSource;->SYSTEM:I

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/GameRecorderUtil;->isSystemAudioSupported(I)Z

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v1, v4}, Lcom/gdg/recordinglib/v2/GameRecorder;->setAudioOption(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->setAudioOption(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v1, v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->setAudioOption(I)V

    goto :goto_1
.end method

.method public _stopRecord()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gdg/recordinglib/GameRecordingMgr$1;

    invoke-direct {v1, p0}, Lcom/gdg/recordinglib/GameRecordingMgr$1;-><init>(Lcom/gdg/recordinglib/GameRecordingMgr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public _stopRecord(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gdg/recordinglib/GameRecordingMgr$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/gdg/recordinglib/GameRecordingMgr$2;-><init>(Lcom/gdg/recordinglib/GameRecordingMgr;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getmAudioUtil()Lcom/gdg/recordinglib/v2/audio/AudioUtil;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr;->mAudioUtil:Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    return-object v0
.end method

.method public isAsyncMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
