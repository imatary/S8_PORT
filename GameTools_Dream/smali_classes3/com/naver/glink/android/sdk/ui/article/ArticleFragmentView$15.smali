.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;
.super Ljava/lang/Object;
.source "ArticleFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/16 v3, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    const-string/jumbo v2, "com.naver.glink.COMMENT_BACK_STACK"

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.naver.glink.COMMENT_BACK_STACK"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->e(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
