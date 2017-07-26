.class Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$2;
.super Lcom/naver/glink/android/sdk/a/e;
.source "CommentFragmentView.java"


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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
