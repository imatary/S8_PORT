.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1600(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setVisibility(I)V

    goto :goto_0
.end method
