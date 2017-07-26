.class Lcom/gdg/recordinglib/GameRecordingMgr$1;
.super Ljava/lang/Object;
.source "GameRecordingMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gdg/recordinglib/GameRecordingMgr;->_stopRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/GameRecordingMgr;


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/GameRecordingMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$000(Lcom/gdg/recordinglib/GameRecordingMgr;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$100(Lcom/gdg/recordinglib/GameRecordingMgr;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v4}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$200(Lcom/gdg/recordinglib/GameRecordingMgr;)J

    move-result-wide v4

    sub-long v0, v2, v4

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->endRecording()V

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$300(Lcom/gdg/recordinglib/GameRecordingMgr;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v2

    iput-wide v0, v2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recordingTime:J

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_TIME:I

    iput v3, v2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$500(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback;

    move-result-object v2

    iget-object v3, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v3}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/gdg/recordinglib/ICallback;->executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    iput v3, v2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$500(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback;

    move-result-object v2

    iget-object v3, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v3}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/gdg/recordinglib/ICallback;->executeOnSuccess(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$1;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2, v3}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$602(Lcom/gdg/recordinglib/GameRecordingMgr;Z)Z

    goto :goto_0
.end method
