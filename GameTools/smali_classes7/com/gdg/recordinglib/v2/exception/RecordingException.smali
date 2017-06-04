.class public abstract Lcom/gdg/recordinglib/v2/exception/RecordingException;
.super Landroid/os/Handler;
.source "RecordingException.java"


# static fields
.field protected static DEBUG:Z = false

.field private static final DEFAULT_PERIOD:I = 0x3e8

.field private static final RUNNING:I = 0x1

.field private static final STOP:I

.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

.field protected final mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

.field protected mPeriodTime:I

.field private mRepeat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "EnvironmentException"

    sput-object v0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/gdg/recordinglib/GameRecordingMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mPeriodTime:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mRepeat:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/exception/RecordingException;->runningMethod()Z

    move-result v0

    iget-boolean v1, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mRepeat:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mPeriodTime:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/gdg/recordinglib/v2/exception/RecordingException;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lcom/gdg/recordinglib/v2/exception/RecordingException;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/gdg/recordinglib/v2/exception/RecordingException;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/gdg/recordinglib/v2/exception/RecordingException;->sendEmptyMessage(I)Z

    iput-boolean v1, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mRepeat:Z

    return-void
.end method

.method protected abstract runningMethod()Z
.end method

.method public setPeriodTime(I)V
    .locals 0

    iput p1, p0, Lcom/gdg/recordinglib/v2/exception/RecordingException;->mPeriodTime:I

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gdg/recordinglib/v2/exception/RecordingException;->sendEmptyMessage(I)Z

    return-void
.end method
