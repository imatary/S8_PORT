.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "Check animation ended"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbbb

    const-wide/16 v2, 0x2c6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
