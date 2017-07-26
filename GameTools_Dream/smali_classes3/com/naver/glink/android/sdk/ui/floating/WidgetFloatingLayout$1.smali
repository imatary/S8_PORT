.class Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$1;
.super Ljava/lang/Object;
.source "WidgetFloatingLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$1;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f()Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f()Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$1;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f()Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f()Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move-result-object v2

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/a/l;->a(Landroid/content/Context;II)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

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
