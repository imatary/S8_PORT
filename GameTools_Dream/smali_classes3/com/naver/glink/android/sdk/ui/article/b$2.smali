.class final Lcom/naver/glink/android/sdk/ui/article/b$2;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ArticleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/b$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/article/b$2;->b:I

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/b$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->f()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/b$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/b$a;

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/article/b$2;->b:I

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/article/b$a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/b$2;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/b$2;->a(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/b$2;->a(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;)V

    return-void
.end method
