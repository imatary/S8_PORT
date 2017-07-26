.class Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->setCurrentState(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$2;->b:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$c;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method
