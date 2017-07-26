.class Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2;
.super Ljava/lang/Object;
.source "GameToolsIntro.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->animateIntro(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

.field final synthetic val$handle:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2;->val$handle:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/high16 v1, 0x3f400000    # 0.75f

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2;->val$handle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x10b

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
