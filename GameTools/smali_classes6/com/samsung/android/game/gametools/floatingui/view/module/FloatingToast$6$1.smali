.class Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6$1;
.super Ljava/lang/Object;
.source "FloatingToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mCoreView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$700(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$600(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
