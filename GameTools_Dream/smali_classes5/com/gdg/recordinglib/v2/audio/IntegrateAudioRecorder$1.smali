.class Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;
.super Landroid/media/MediaCodec$Callback;
.source "IntegrateAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    const-string/jumbo v0, "[audio] onError"

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 13

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v12, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->lock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    :try_start_1
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    invoke-static {v0}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->access$000(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v1, v1, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    aget-object v1, v0, v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->isFilled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    add-int/lit8 v7, v7, 0x1

    :try_start_3
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    aget-object v0, v0, v2

    sget v2, Lcom/gdg/recordinglib/GameRecorderDefine;->CODEC_INPUT_WAIT_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    sget v0, Lcom/gdg/recordinglib/GameRecorderDefine;->CODEC_INPUT_WAIT_CNT:I

    if-ne v7, v0, :cond_0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v12

    :goto_1
    return-void

    :catch_0
    move-exception v8

    sget-object v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputBuffer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    aget-object v0, v0, v2

    iget-object v9, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->rawMic:[S

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    aget-object v0, v0, v2

    iget-object v11, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->rawSystem:[S

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->isFilled:Z

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    aget-object v0, v0, v2

    iget-wide v4, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->timeStamp:J

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    invoke-static {v0, v9, v11, v10}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->access$100(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;[S[SLjava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    sget v2, Lcom/gdg/recordinglib/GameRecorderDefine;->JITTER_BUFFER_SIZE:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    const/4 v2, 0x0

    iput v2, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    :cond_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v3, v1, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBufferSize:I

    const/4 v6, 0x2

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :goto_2
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    :catch_1
    move-exception v8

    sget-object v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queueInputBuffer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iput v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->isMuxerStarted()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v6

    sget-object v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOutputBuffer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    sget-object v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOutputBuffer releaseOutputBuffer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v6

    sget-object v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "info.size not 0 releaseOutputBuffer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    iput-wide v8, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v1, v1, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioTrackIndex:I

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->writeSampleData(Landroid/media/MediaCodec;IILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_1
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    sget-object v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "info.size 0 releaseOutputBuffer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    const-string/jumbo v0, "[audio] onOutputFormatChanged"

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v1, v1, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioTrackIndex:I

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->muxerStart()V

    return-void
.end method
