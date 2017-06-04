.class Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;
.super Landroid/media/MediaCodec$Callback;
.source "IAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    const-string/jumbo v0, "AudioRecorder"

    const-string/jumbo v1, "[audio] onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 12

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v9, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->lock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget v1, v1, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioBufferSize:I

    invoke-virtual {v0, v8, v1}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long v4, v0, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x2

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v9

    :goto_1
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_0
    :try_start_4
    const-string/jumbo v0, "AudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[audio] ERROR_INVALID_OPERATION, result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "AudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[audio] ERROR_BAD_VALUE, result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

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

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    iput-wide v8, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v1, v1, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioTrackIndex:I

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->writeSampleData(Landroid/media/MediaCodec;IILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_1
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AudioRecorder"

    const-string/jumbo v1, "BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    const-string/jumbo v0, "AudioRecorder"

    const-string/jumbo v1, "[audio] onOutputFormatChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v1, v1, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mAudioTrackIndex:I

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v0, v0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->muxerStart()V

    return-void
.end method
