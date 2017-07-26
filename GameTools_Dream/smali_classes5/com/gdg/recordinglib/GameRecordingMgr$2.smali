.class Lcom/gdg/recordinglib/GameRecordingMgr$2;
.super Ljava/lang/Object;
.source "GameRecordingMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gdg/recordinglib/GameRecordingMgr;->_stopRecord(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

.field final synthetic val$errCode:I

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/GameRecordingMgr;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    iput p2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->val$errCode:I

    iput-boolean p3, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$000(Lcom/gdg/recordinglib/GameRecordingMgr;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$100(Lcom/gdg/recordinglib/GameRecordingMgr;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v4}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$200(Lcom/gdg/recordinglib/GameRecordingMgr;)J

    move-result-wide v4

    sub-long v0, v2, v4

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->endRecording()V

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$300(Lcom/gdg/recordinglib/GameRecordingMgr;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v2

    iput-wide v0, v2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recordingTime:J

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v2

    iget v3, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->val$errCode:I

    iput v3, v2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    iget-boolean v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->val$success:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$500(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback;

    move-result-object v2

    iget-object v3, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v3}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/gdg/recordinglib/ICallback;->executeOnSuccess(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$500(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback;

    move-result-object v2

    iget-object v3, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-static {v3}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/gdg/recordinglib/ICallback;->executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    goto :goto_0
.end method
