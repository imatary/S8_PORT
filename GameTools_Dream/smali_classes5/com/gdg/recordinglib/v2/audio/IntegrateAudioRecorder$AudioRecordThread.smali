.class public Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;
.super Ljava/lang/Thread;
.source "IntegrateAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioRecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x1

    :goto_0
    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-boolean v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mCond:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-eq v3, v10, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v4, v4, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v4, v3, v4

    monitor-enter v4

    const/4 v0, 0x0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v3, v3, v5

    iget-boolean v3, v3, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->isFilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v3, v3, v5

    sget v5, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_TIME:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_CNT:I

    if-ne v0, v3, :cond_2

    :cond_3
    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v6, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v6, v6, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->rawMic:[S

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v7, v7, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->halfBufferSize:I

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    invoke-static {v3}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->access$000(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v6, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v6, v6, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->rawSystem:[S

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v7, v7, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->halfBufferSize:I

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v3, v3, v5

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->isFilled:Z

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v3, v3, v5

    iput v1, v3, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->readMicSize:I

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v3, v3, v5

    iput v2, v3, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->readSystemSize:I

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v3, v3, v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, v3, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->timeStamp:J

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget-object v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v5, v5, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v5, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    iget v3, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    sget v5, Lcom/gdg/recordinglib/GameRecorderDefine;->JITTER_BUFFER_SIZE:I

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    const/4 v5, 0x0

    iput v5, v3, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_SLEEP_TIME:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method
