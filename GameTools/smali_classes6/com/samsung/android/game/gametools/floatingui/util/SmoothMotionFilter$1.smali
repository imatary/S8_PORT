.class Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$1;
.super Ljava/lang/Object;
.source "SmoothMotionFilter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->startValueAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v1, v0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimResult:Landroid/graphics/Point;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v0, "y"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
