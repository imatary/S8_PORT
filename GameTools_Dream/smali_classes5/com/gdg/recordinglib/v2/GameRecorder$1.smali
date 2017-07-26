.class Lcom/gdg/recordinglib/v2/GameRecorder$1;
.super Landroid/media/MediaCodec$Callback;
.source "GameRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/v2/GameRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/v2/GameRecorder;


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[video] onError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->printStackTrace()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    return-void
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

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-static {v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$000(Lcom/gdg/recordinglib/v2/GameRecorder;)Z

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

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-static {v1}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$100(Lcom/gdg/recordinglib/v2/GameRecorder;)Landroid/media/MediaCodec;

    move-result-object v1

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-static {v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$200(Lcom/gdg/recordinglib/v2/GameRecorder;)I

    move-result v2

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gdg/recordinglib/v2/GameRecorder;->writeSampleData(Landroid/media/MediaCodec;IILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_1
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;)V

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

    goto :goto_0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    const-string/jumbo v1, "[video] onOutputFormatChanged"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-static {v1}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$300(Lcom/gdg/recordinglib/v2/GameRecorder;)Landroid/media/MediaMuxer;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-static {v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$300(Lcom/gdg/recordinglib/v2/GameRecorder;)Landroid/media/MediaMuxer;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$202(Lcom/gdg/recordinglib/v2/GameRecorder;I)I

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder$1;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v1}, Lcom/gdg/recordinglib/v2/GameRecorder;->muxerStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "[video] onOutputFormatChanged Exception"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
