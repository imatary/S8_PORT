.class Lcom/gdg/recordinglib/RecordingModuleMgr$2;
.super Ljava/lang/Object;
.source "RecordingModuleMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gdg/recordinglib/RecordingModuleMgr;->startRecord(Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gdg/recordinglib/RecordingModuleMgr;

.field final synthetic val$callback:Lcom/gdg/recordinglib/ICallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/RecordingModuleMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->this$0:Lcom/gdg/recordinglib/RecordingModuleMgr;

    iput-object p2, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iput-object p4, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$callback:Lcom/gdg/recordinglib/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/gdg/recordinglib/GameRecorderUtil;->getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gdg/recordinglib/GameRecorderUtil;->setFileNameGen()V

    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->this$0:Lcom/gdg/recordinglib/RecordingModuleMgr;

    iget-object v1, v1, Lcom/gdg/recordinglib/RecordingModuleMgr;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    iget-object v2, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget-object v4, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$callback:Lcom/gdg/recordinglib/ICallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/gdg/recordinglib/GameRecordingMgr;->_startRecord(Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)I

    move-result v0

    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iput v0, v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    const-string/jumbo v1, "RecordingModuleMgr"

    const-string/jumbo v2, "syncMode"

    invoke-static {v1, v2}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v3, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v3, v3, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v1, v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v1, v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_STORAGE:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v1, v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->TIME_LIMIT_REACHED:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v1, v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->STORAGE_LIMIT_REACHED:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$callback:Lcom/gdg/recordinglib/ICallback;

    iget-object v2, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    invoke-interface {v1, v2}, Lcom/gdg/recordinglib/ICallback;->executeOnSuccess(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    :goto_0
    const/4 v1, 0x0

    # setter for: Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z
    invoke-static {v1}, Lcom/gdg/recordinglib/RecordingModuleMgr;->access$002(Z)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$callback:Lcom/gdg/recordinglib/ICallback;

    iget-object v2, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$2;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    invoke-interface {v1, v2}, Lcom/gdg/recordinglib/ICallback;->executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    goto :goto_0
.end method
