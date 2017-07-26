.class Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$1;
.super Ljava/lang/Object;
.source "SearchArticlesFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$1;->b:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$1;->b:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Ljava/lang/String;)V

    return-void
.end method
