.class final Lcom/naver/glink/android/sdk/api/requests/Requests$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "Requests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/api/requests/Requests;->syncGameUserId(Landroid/content/Context;)V
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$user:Lcom/naver/glink/android/sdk/a/l$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/a/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/requests/Requests$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/api/requests/Requests$1;->val$user:Lcom/naver/glink/android/sdk/a/l$a;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/api/requests/Requests$1;->onSuccess(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/Requests$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/Requests$1;->val$user:Lcom/naver/glink/android/sdk/a/l$a;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/a/l$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/a/l;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/Requests$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/a/l;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/a/l$a;)V

    return-void
.end method
