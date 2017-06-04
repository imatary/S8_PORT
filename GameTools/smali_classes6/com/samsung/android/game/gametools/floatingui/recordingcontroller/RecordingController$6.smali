.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->animationGameCastRecordingEnd(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

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

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mSavedCheckView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

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
