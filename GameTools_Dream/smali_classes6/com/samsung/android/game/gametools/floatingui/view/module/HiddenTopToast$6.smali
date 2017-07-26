.class Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;
.super Ljava/lang/Object;
.source "HiddenTopToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->initAnims()V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$602(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$700(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->hideImmediately()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$1000(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
