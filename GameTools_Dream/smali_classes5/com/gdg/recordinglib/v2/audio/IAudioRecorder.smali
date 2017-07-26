.class public abstract Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;
.super Ljava/lang/Object;
.source "IAudioRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;,
        Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field public halfBufferSize:I

.field protected mAudioBufferSize:I

.field mAudioCallback:Landroid/media/MediaCodec$Callback;

.field protected mAudioCodec:Landroid/media/MediaCodec;

.field protected mAudioRecord:Landroid/media/AudioRecord;

.field protected volatile mAudioTrackIndex:I

.field private mCanIncreaseBuffer:Z

.field mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

.field public mCircularBufferChangeSizeFence:Ljava/lang/Object;

.field public mCircularBufferFence:Ljava/lang/Object;

.field public mCond:Z

.field protected mMediaMuxer:Landroid/media/MediaMuxer;

.field protected mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

.field private mWriterHandler:Landroid/os/Handler;

.field public maxBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCircularBufferFence:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCircularBufferChangeSizeFence:Ljava/lang/Object;

    new-instance v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;

    invoke-direct {v0, p0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;-><init>(Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioCallback:Landroid/media/MediaCodec$Callback;

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioTrackIndex:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mWriterHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCanIncreaseBuffer:Z

    return-void
.end method


# virtual methods
.method protected abstract endRecordThread()V
.end method

.method public getAudioRecord()Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public declared-synchronized getAudioTrackIndex()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioTrackIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initAudio()V
    .locals 4

    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->initAudioRecord()V

    iget v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->maxBufferSize:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->halfBufferSize:I

    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->initJitterBuffer()V

    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->initAudioCodec()V

    return-void
.end method

.method protected abstract initAudioCodec()V
.end method

.method protected abstract initAudioRecord()V
.end method

.method protected abstract initJitterBuffer()V
.end method

.method public setMediaMuxer(Landroid/media/MediaMuxer;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->startRecordThread()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method protected abstract startRecordThread()V
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->endRecordThread()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    return-void
.end method

.method public writeSampleData(Landroid/media/MediaCodec;IILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCircularBufferFence:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, -0x1

    :cond_0
    :goto_0
    if-ne v0, v4, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

    invoke-virtual {v1, p4, p5}, Lcom/gdg/recordinglib/CircularBuffer;->add(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-boolean v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCanIncreaseBuffer:Z

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCircularBufferChangeSizeFence:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

    invoke-virtual {v1}, Lcom/gdg/recordinglib/CircularBuffer;->increaseSize()Z

    move-result v1

    iput-boolean v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCanIncreaseBuffer:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCanIncreaseBuffer:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mCircularBufferFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mWriterHandler:Landroid/os/Handler;

    new-instance v2, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$2;

    invoke-direct {v2, p0, p5, p2}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$2;-><init>(Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;Landroid/media/MediaCodec$BufferInfo;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
