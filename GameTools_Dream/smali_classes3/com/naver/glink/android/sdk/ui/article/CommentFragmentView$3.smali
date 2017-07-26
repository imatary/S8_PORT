.class Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$3;
.super Ljava/lang/Object;
.source "CommentFragmentView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p3}, Lcom/naver/glink/android/sdk/a/g;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
