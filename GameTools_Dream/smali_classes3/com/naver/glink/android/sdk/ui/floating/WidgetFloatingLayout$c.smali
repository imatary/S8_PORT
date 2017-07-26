.class Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;
.super Landroid/os/Handler;
.source "WidgetFloatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->c(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v0

    if-le v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->e(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->d(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->e(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f()Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->h(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->c(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v0

    if-ge v0, v1, :cond_4

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f()Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_a

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->e(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->d(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->c(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v0

    sub-int v0, v1, v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->c(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;I)I

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v4

    sub-int v0, v4, v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->e(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->e(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->c(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v0

    sub-int v0, v1, v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v0

    :goto_4
    sub-int v0, v3, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_8
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->c(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;I)I

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I

    move-result v4

    sub-int v0, v4, v0

    goto :goto_4

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->e(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
