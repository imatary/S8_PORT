.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;
.super Ljava/lang/Object;
.source "RecordingModuleMgrWrapper.java"

# interfaces
.implements Lcom/gdg/recordinglib/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->startRecord(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "executeOnFail cmd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    iget-object v3, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;->onTaskFinished(IILjava/lang/String;)V

    return-void
.end method

.method public executeOnSuccess(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Create Recording File End :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recorded error_code= [GameRecorderError.NO_ERROR]! filename : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    move-result-object v0

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    iget-object v2, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;->onTaskFinished(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_STORAGE:I

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recorded error_code= [GameRecorderError.NOT_ENOUGHT_STORAGE], filename : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    move-result-object v0

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_STORAGE:I

    iget-object v2, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;->onTaskFinished(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->TIME_LIMIT_REACHED:I

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recorded error_code= [GameRecorderError.TIME_LIMIT_REACHED], filename : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    move-result-object v0

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->TIME_LIMIT_REACHED:I

    iget-object v2, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;->onTaskFinished(IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->STORAGE_LIMIT_REACHED:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recorded error_code= [GameRecorderError.STORAGE_LIMIT_REACHED], filename : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    move-result-object v0

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->STORAGE_LIMIT_REACHED:I

    iget-object v2, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;->onTaskFinished(IILjava/lang/String;)V

    goto/16 :goto_0
.end method
