.class Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$5;
.super Ljava/lang/Object;
.source "FloatingToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->hideArrow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
