.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$1;
.super Landroid/os/Handler;
.source "RecordingController.java"


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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRecordingHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0x1b5b

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->recordStateCheckView(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$002(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Z)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_1
        0x1388 -> :sswitch_2
    .end sparse-switch
.end method
