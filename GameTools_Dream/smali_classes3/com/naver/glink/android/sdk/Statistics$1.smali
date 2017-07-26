.class final Lcom/naver/glink/android/sdk/Statistics$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/Statistics;->send(Ljava/util/Map;)V
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
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/Statistics$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/Statistics$1;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/Statistics$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/Statistics$1;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/naver/glink/android/sdk/api/Response;->getErrorMessage(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Response;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/Statistics$1;->a(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/Statistics$1;->a(Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;)V

    return-void
.end method
