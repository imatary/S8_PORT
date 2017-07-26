.class Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$7;
.super Ljava/lang/Object;
.source "CommentFragmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$7;->b:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$7;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$7;->b:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$7;->a:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CommentFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
