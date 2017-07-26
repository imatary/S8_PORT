.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$13;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$13;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$13;->a:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$13;->a:Landroid/net/Uri;

    const-string/jumbo v1, "commentId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$13;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$13;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(II)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    return-void
.end method
