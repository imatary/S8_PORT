.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinished(IILjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Record finish...cmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_STORAGE:I

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0xbbd

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "4041"

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->getInstance()Lcom/gdg/recordinglib/RecordingModuleMgr;

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->getLastRecordedTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->startMediaScan(Ljava/lang/String;)V
    invoke-static {v0, p3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$3000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->TIME_LIMIT_REACHED:I

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0xbbe

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->STORAGE_LIMIT_REACHED:I

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0xbc6

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "RECORD_SUCCESS and RECORD_ELSE_TERMINATION"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2800(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->isScreenWasLeftException()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0xbc7

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_INVALID_OPERATION:I

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0xbc0

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1800(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->cancelByError()V

    goto :goto_1

    :cond_6
    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_TIME:I

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0xbc2

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    invoke-static {p3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->STAGEFRIGHT_INVALID_OPERATION:I

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0xbc5

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0xbbf

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_2
.end method
