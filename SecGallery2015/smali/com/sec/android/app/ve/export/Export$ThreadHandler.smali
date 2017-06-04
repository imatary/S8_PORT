.class Lcom/sec/android/app/ve/export/Export$ThreadHandler;
.super Landroid/os/Handler;
.source "Export.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/export/Export;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadHandler"
.end annotation


# instance fields
.field mDelay:I

.field mProgress:I

.field final synthetic this$0:Lcom/sec/android/app/ve/export/Export;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/export/Export;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mDelay:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v5, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->releaseService()V
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$400(Lcom/sec/android/app/ve/export/Export;)V

    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->setExportState(I)V
    invoke-static {v4, v8}, Lcom/sec/android/app/ve/export/Export;->access$200(Lcom/sec/android/app/ve/export/Export;I)V

    iput v8, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onExportStopped()V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/ve/export/IExportService;->cancelNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/ve/export/Export;->access$500(Lcom/sec/android/app/ve/export/Export;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$500(Lcom/sec/android/app/ve/export/Export;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onExportProgressUpdate(I)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onExportCompleted()V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->releaseService()V
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$400(Lcom/sec/android/app/ve/export/Export;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->runMediaScanner()V
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$600(Lcom/sec/android/app/ve/export/Export;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->saveTranscodeElementAfterExport()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v5}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getResolutionEnumValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/export/Export;->removeSavedTranscode(I)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    new-instance v5, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iget-object v6, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v6}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V

    iget-object v6, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/ve/export/Export;->access$500(Lcom/sec/android/app/ve/export/Export;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v7}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getResolutionEnumValue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/ve/export/Export;->saveexportedtranscode(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectFileName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance()Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v5}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance()Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v6}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isTranscodeContentSame(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance()Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    invoke-static {v5}, Lcom/sec/android/app/ve/export/Export;->access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->setExportState(I)V
    invoke-static {v4, v8}, Lcom/sec/android/app/ve/export/Export;->access$200(Lcom/sec/android/app/ve/export/Export;I)V

    iput v8, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->releaseService()V
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$400(Lcom/sec/android/app/ve/export/Export;)V

    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->setExportState(I)V
    invoke-static {v4, v8}, Lcom/sec/android/app/ve/export/Export;->access$200(Lcom/sec/android/app/ve/export/Export;I)V

    iput v8, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onExportFailed()V

    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/ve/export/IExportService;->cancelNotification()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/ve/export/Export;->access$500(Lcom/sec/android/app/ve/export/Export;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/export/Export;->initExportProgress(Ljava/lang/String;)V

    iput v8, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    iget v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mDelay:I

    int-to-long v4, v4

    invoke-virtual {p0, v9, v4, v5}, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/export/Export;->getExportProgress()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->getExportState()I
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$800(Lcom/sec/android/app/ve/export/Export;)I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->getExportState()I
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$800(Lcom/sec/android/app/ve/export/Export;)I

    move-result v4

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mDelay:I

    int-to-long v4, v4

    invoke-virtual {p0, v9, v4, v5}, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    iget v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onExportProgressUpdate(I)V

    :try_start_3
    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    iget-object v6, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->getExportState()I
    invoke-static {v6}, Lcom/sec/android/app/ve/export/Export;->access$800(Lcom/sec/android/app/ve/export/Export;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/ve/export/IExportService;->updateNotification(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->getExportState()I
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$800(Lcom/sec/android/app/ve/export/Export;)I

    move-result v4

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    iget v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onExportProgressUpdate(I)V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onExportPaused()V

    :try_start_4
    iget-object v4, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # getter for: Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;
    invoke-static {v4}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->mProgress:I

    iget-object v6, p0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->this$0:Lcom/sec/android/app/ve/export/Export;

    # invokes: Lcom/sec/android/app/ve/export/Export;->getExportState()I
    invoke-static {v6}, Lcom/sec/android/app/ve/export/Export;->access$800(Lcom/sec/android/app/ve/export/Export;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/ve/export/IExportService;->updateNotification(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
