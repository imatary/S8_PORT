.class Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$2;
.super Ljava/lang/Object;
.source "SearchArticlesFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Z)V

    return-void
.end method
