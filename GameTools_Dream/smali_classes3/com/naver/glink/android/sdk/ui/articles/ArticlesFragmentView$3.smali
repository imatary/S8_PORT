.class Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$3;
.super Ljava/lang/Object;
.source "ArticlesFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->a()Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->a()Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->b(Lcom/naver/glink/android/sdk/model/Menu;)V

    :cond_0
    return-void
.end method
