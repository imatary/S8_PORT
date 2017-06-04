.class Lcom/gdg/recordinglib/v2/GameRecorder$2;
.super Ljava/lang/Object;
.source "GameRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gdg/recordinglib/v2/GameRecorder;->writeSampleData(Landroid/media/MediaCodec;IILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

.field final synthetic val$bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic val$trackIndex:I


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/v2/GameRecorder;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    iput-object p2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->val$bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput p3, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->val$trackIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v3, v2, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBufferChangeSizeFence:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    # getter for: Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;
    invoke-static {v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$400(Lcom/gdg/recordinglib/v2/GameRecorder;)Lcom/gdg/recordinglib/CircularBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->val$bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v4}, Lcom/gdg/recordinglib/CircularBuffer;->getTailChunk(Landroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    # getter for: Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;
    invoke-static {v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$300(Lcom/gdg/recordinglib/v2/GameRecorder;)Landroid/media/MediaMuxer;

    move-result-object v2

    iget v3, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->val$trackIndex:I

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->val$bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v3, v2, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBufferFence:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    # getter for: Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;
    invoke-static {v2}, Lcom/gdg/recordinglib/v2/GameRecorder;->access$400(Lcom/gdg/recordinglib/v2/GameRecorder;)Lcom/gdg/recordinglib/CircularBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gdg/recordinglib/CircularBuffer;->removeTail()V

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder$2;->this$0:Lcom/gdg/recordinglib/v2/GameRecorder;

    iget-object v2, v2, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBufferFence:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method
