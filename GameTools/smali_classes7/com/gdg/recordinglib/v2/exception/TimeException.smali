.class public Lcom/gdg/recordinglib/v2/exception/TimeException;
.super Lcom/gdg/recordinglib/v2/exception/RecordingException;
.source "TimeException.java"


# instance fields
.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/gdg/recordinglib/GameRecordingMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gdg/recordinglib/v2/exception/RecordingException;-><init>(Lcom/gdg/recordinglib/GameRecordingMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    return-void
.end method


# virtual methods
.method protected runningMethod()Z
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/gdg/recordinglib/v2/exception/TimeException;->mStartTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/exception/TimeException;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v4, v4, Lcom/gdg/recordinglib/ICallback$GCMetadata;->timeLimit:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/exception/TimeException;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    sget v5, Lcom/gdg/recordinglib/GameRecorderError;->TIME_LIMIT_REACHED:I

    invoke-virtual {v4, v5, v8}, Lcom/gdg/recordinglib/GameRecordingMgr;->_stopRecord(IZ)V

    :cond_0
    return v8
.end method

.method public start()V
    .locals 2

    invoke-super {p0}, Lcom/gdg/recordinglib/v2/exception/RecordingException;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gdg/recordinglib/v2/exception/TimeException;->mStartTime:J

    return-void
.end method
