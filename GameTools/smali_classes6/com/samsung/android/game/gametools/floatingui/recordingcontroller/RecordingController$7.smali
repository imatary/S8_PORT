.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->animationGameCastRecording(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->vpAnimatorList:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
