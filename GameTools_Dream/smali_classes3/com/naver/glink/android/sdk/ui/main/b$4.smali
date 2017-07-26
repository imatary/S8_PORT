.class final Lcom/naver/glink/android/sdk/ui/main/b$4;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "MainHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/main/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannelByChannelCode(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/Responses$Channel;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->j()Lcom/naver/glink/android/sdk/ui/main/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/main/a;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->language:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/main/b$4;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method
