.class Lcom/naver/glink/android/sdk/ui/floating/b$c;
.super Landroid/os/Handler;
.source "RecordWidgetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/floating/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->u(Lcom/naver/glink/android/sdk/ui/floating/b;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->p(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->q(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->p(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v3, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v3, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->b(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->b(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->b(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$c;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->b(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
