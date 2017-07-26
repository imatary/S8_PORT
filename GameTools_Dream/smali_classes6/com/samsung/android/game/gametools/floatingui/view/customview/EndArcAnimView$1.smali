.class Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView$1;
.super Ljava/lang/Object;
.source "EndArcAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "degree"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->setStart(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->setAngle(F)V

    :cond_0
    return-void
.end method
