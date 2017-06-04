.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$1;
.super Ljava/lang/Object;
.source "NoneRecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doAction(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

.field final synthetic val$action:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$1;->val$action:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$1;->val$action:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doSomeThing(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    return-void
.end method
