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
    .locals 2

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    # invokes: Lcom/gdg/recordinglib/GameRecordingMgr;->removeExceptionHandling()V
    invoke-static {v0}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$000(Lcom/gdg/recordinglib/GameRecordingMgr;)V

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    # getter for: Lcom/gdg/recordinglib/GameRecordingMgr;->mMuxerStarted:Z
    invoke-static {v0}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$100(Lcom/gdg/recordinglib/GameRecordingMgr;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->endRecording()V

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    # invokes: Lcom/gdg/recordinglib/GameRecordingMgr;->stopGameRecorder()V
    invoke-static {v0}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$300(Lcom/gdg/recordinglib/GameRecordingMgr;)V

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    # getter for: Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;
    invoke-static {v0}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v0

    iget v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->val$errCode:I

    iput v1, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    iget-boolean v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->val$success:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    # getter for: Lcom/gdg/recordinglib/GameRecordingMgr;->mCallback:Lcom/gdg/recordinglib/ICallback;
    invoke-static {v0}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$500(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback;

    move-result-object v0

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    # getter for: Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;
    invoke-static {v1}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gdg/recordinglib/ICallback;->executeOnSuccess(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    # getter for: Lcom/gdg/recordinglib/GameRecordingMgr;->mCallback:Lcom/gdg/recordinglib/ICallback;
    invoke-static {v0}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$500(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback;

    move-result-object v0

    iget-object v1, p0, Lcom/gdg/recordinglib/GameRecordingMgr$2;->this$0:Lcom/gdg/recordinglib/GameRecordingMgr;

    # getter for: Lcom/gdg/recordinglib/GameRecordingMgr;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;
    invoke-static {v1}, Lcom/gdg/recordinglib/GameRecordingMgr;->access$400(Lcom/gdg/recordinglib/GameRecordingMgr;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gdg/recordinglib/ICallback;->executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    goto :goto_0
.end method
