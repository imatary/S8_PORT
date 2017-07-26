.class Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;
.super Ljava/util/TimerTask;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;I)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->b(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;I)I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;)I

    move-result v2

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->b(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;I)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->cancel()Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->e(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;I)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->b(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;I)I

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;->c:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I

    move-result v0

    goto :goto_2
.end method
