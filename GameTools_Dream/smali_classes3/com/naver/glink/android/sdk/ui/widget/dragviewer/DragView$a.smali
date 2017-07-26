.class Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;
.super Landroid/os/Handler;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->requestLayout()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->b(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
