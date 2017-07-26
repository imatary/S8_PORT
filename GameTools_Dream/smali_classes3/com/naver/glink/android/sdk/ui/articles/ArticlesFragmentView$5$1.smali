.class Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5$1;
.super Ljava/lang/Object;
.source "ArticlesFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/articles/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/model/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(I)V

    return-void
.end method
