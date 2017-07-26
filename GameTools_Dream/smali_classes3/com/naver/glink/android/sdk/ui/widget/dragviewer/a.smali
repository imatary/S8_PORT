.class public Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;
.super Ljava/lang/Object;
.source "MultiMediaAnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field static f:Landroid/animation/TimeInterpolator;

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x172

    sput v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->g:I

    const-string/jumbo v0, "start_img"

    sput-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->a:Ljava/lang/String;

    const-string/jumbo v0, "start_left"

    sput-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->b:Ljava/lang/String;

    const-string/jumbo v0, "start_top"

    sput-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->c:Ljava/lang/String;

    const-string/jumbo v0, "start_right"

    sput-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->d:Ljava/lang/String;

    const-string/jumbo v0, "start_bottom"

    sput-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->e:Ljava/lang/String;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->f:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v0, p2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v1, "x"

    new-array v2, v4, [F

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v2, v5

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v2, v6

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string/jumbo v2, "y"

    new-array v3, v4, [F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    aput v4, v3, v5

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a$1;

    invoke-direct {v3, p2, p1, p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a$1;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a;->g:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
