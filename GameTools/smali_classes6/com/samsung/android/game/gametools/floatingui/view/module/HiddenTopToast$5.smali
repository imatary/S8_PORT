.class Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;
.super Ljava/lang/Object;
.source "HiddenTopToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->hideArrow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow1:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow2:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$400(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow3:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$500(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow1:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow2:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$400(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow3:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$500(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
