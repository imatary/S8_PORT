.class Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;
.super Landroid/os/Handler;
.source "RecordingModuleMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gdg/recordinglib/RecordingModuleMgr$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gdg/recordinglib/RecordingModuleMgr$1;


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/RecordingModuleMgr$1;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;->this$1:Lcom/gdg/recordinglib/RecordingModuleMgr$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {}, Lcom/gdg/recordinglib/GameRecorderUtil;->getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gdg/recordinglib/GameRecorderUtil;->setFileNameGen()V

    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;->this$1:Lcom/gdg/recordinglib/RecordingModuleMgr$1;

    iget-object v1, v1, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->this$0:Lcom/gdg/recordinglib/RecordingModuleMgr;

    iget-object v1, v1, Lcom/gdg/recordinglib/RecordingModuleMgr;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    iget-object v2, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;->this$1:Lcom/gdg/recordinglib/RecordingModuleMgr$1;

    iget-object v2, v2, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;->this$1:Lcom/gdg/recordinglib/RecordingModuleMgr$1;

    iget-object v3, v3, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget-object v4, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;->this$1:Lcom/gdg/recordinglib/RecordingModuleMgr$1;

    iget-object v4, v4, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->val$callback:Lcom/gdg/recordinglib/ICallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/gdg/recordinglib/GameRecordingMgr;->_startRecord(Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)I

    move-result v0

    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;->this$1:Lcom/gdg/recordinglib/RecordingModuleMgr$1;

    iget-object v1, v1, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iput v0, v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    const-string/jumbo v1, "RecordingModuleMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RecordingModuleMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "errCode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;->this$1:Lcom/gdg/recordinglib/RecordingModuleMgr$1;

    iget-object v3, v3, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v3, v3, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
