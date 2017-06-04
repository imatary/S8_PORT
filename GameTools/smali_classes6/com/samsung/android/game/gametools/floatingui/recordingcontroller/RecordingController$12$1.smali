.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showRecordingEndToast()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$3300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    return-void
.end method
