.class public Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;
.super Ljava/lang/Object;
.source "IAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioBuffer2Channel"
.end annotation


# instance fields
.field isFilled:Z

.field rawMic:[S

.field rawSystem:[S

.field readMicSize:I

.field readSystemSize:I

.field final synthetic this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

.field timeStamp:J


# direct methods
.method public constructor <init>(Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->halfBufferSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->rawMic:[S

    iget v0, p1, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->halfBufferSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->rawSystem:[S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->timeStamp:J

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->readSystemSize:I

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->readMicSize:I

    iput-boolean v2, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;->isFilled:Z

    return-void
.end method
