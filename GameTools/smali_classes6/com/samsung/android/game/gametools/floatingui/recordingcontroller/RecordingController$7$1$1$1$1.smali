.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1$1;->this$4:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1$1;->this$4:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1$1;->this$4:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1$1;->this$4:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1$1;->this$4:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1$1;->this$4:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
