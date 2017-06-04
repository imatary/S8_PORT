.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;
.super Lcom/sec/game/gamecast/common/view/AnimationDrawableCallback;
.source "RecordingController.java"


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
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;

    invoke-direct {p0, p2, p3}, Lcom/sec/game/gamecast/common/view/AnimationDrawableCallback;-><init>(Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .locals 4

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "Check animation ended"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbbb

    const-wide/16 v2, 0x2c6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
