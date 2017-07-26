.class public Lcom/naver/glink/android/sdk/ui/article/b;
.super Ljava/lang/Object;
.source "ArticleCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/article/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->internet_not_connected_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(II)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a()Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;IZ)V
    .locals 2

    if-nez p3, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->delete_confirm_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/b$1;-><init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;I)V

    invoke-static {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/naver/glink/android/sdk/api/requests/Requests;->deleteArticleRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/b$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/naver/glink/android/sdk/ui/article/b$2;-><init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;ILandroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method
