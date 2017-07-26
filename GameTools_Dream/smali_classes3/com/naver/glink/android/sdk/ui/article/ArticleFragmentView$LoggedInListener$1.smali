.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;
.super Ljava/lang/Object;
.source "ArticleFragmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->onLoggedIn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$10;->a:[I

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$After;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->c(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->i(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->d(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->e(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
