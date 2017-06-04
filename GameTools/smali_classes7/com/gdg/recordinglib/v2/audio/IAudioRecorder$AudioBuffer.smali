.class public Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;
.super Ljava/lang/Object;
.source "IAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioBuffer"
.end annotation


# instance fields
.field isFilled:Z

.field raw:[S

.field readSize:I

.field final synthetic this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

.field timeStamp:J


# direct methods
.method public constructor <init>(Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->this$0:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->halfBufferSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->raw:[S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->timeStamp:J

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->readSize:I

    iput-boolean v2, p0, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer;->isFilled:Z

    return-void
.end method
