.class Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$10;
.super Lcom/naver/glink/android/sdk/a/e;
.source "SearchArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->b(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->h(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
