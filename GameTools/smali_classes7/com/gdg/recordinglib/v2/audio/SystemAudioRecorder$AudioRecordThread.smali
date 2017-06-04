.class public Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;
.super Ljava/lang/Thread;
.source "SystemAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioRecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    :goto_0
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-boolean v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mCond:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-eq v2, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioBuffer:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v3, v3, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    aget-object v3, v2, v3

    monitor-enter v3

    const/4 v0, 0x0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioBuffer:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v4, v4, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    aget-object v2, v2, v4

    iget-boolean v2, v2, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->isFilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioBuffer:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v4, v4, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    aget-object v2, v2, v4

    sget v4, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_TIME:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    sget v2, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_CNT:I

    if-ne v0, v2, :cond_2

    :cond_3
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v4, v4, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioBuffer:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v5, v5, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->raw:[S

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v6, v6, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->halfBufferSize:I

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioBuffer:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v4, v4, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    aget-object v2, v2, v4

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->isFilled:Z

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioBuffer:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v4, v4, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    aget-object v2, v2, v4

    iput v1, v2, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->readSize:I

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioBuffer:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v4, v4, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    aget-object v2, v2, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v2, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->timeStamp:J

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mAudioBuffer:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v4, v4, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v4, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    iget v2, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    sget v4, Lcom/gdg/recordinglib/GameRecorderDefine;->JITTER_BUFFER_SIZE:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder$AudioRecordThread;->this$0:Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    const/4 v4, 0x0

    iput v4, v2, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;->mWritePosition:I

    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget v2, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_SLEEP_TIME:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :catch_1
    move-exception v2

    goto :goto_1
.end method
