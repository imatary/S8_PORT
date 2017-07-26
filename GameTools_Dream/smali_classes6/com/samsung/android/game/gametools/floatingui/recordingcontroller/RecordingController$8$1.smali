.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x8

    const v2, 0x3dcccccd    # 0.1f

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1800(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1600(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
