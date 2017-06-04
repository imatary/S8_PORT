.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;
.super Ljava/lang/Object;
.source "RecordingEndAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->startAnim(JLcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

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

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mSavedCheckView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/graphics/drawable/AnimationDrawable;

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
