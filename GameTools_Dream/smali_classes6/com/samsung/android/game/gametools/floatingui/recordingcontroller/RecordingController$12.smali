.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinished(IILcom/gdg/recordinglib/ICallback$GCMetadata;)V
    .locals 6

    const/16 v5, 0xbc2

    const-string/jumbo v2, "RecordingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Record finish...cmd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5

    iget-wide v0, p3, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recordingTime:J

    const-string/jumbo v2, "RecordingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTaskFinished CMD_RECORD_SUCCESS : recording Time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_STORAGE:I

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v3, 0xbbd

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v2, v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    iget-object v2, p3, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->deleteFile(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->TIME_LIMIT_REACHED:I

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v3, 0xbbe

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iget-object v3, p3, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$3000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->STORAGE_LIMIT_REACHED:I

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v3, 0xbc6

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "RecordingController"

    const-string/jumbo v3, "RECORD_SUCCESS and RECORD_ELSE_TERMINATION"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->isScreenWasLeftException()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v3, 0xbc7

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->MIC_INVALID_OPERATION:I

    if-ne p2, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v3, 0xbc0

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_0

    :cond_6
    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_TIME:I

    if-ne p2, v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v2, v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    iget-object v2, p3, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->STAGEFRIGHT_INVALID_OPERATION:I

    if-ne p2, v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v3, 0xbc5

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v3, 0xbbf

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_0
.end method
