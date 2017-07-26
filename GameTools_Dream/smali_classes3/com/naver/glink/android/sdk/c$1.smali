.class final Lcom/naver/glink/android/sdk/c$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "G.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V
    .locals 3

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;->connection:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Connection;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Connection;->apis:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$ConnectionApis;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$ConnectionApis;->getConnection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->q()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/configure/a;->a(Lcom/naver/glink/android/sdk/configure/a;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/c$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/naver/glink/android/sdk/configure/b;->a(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/naver/glink/android/sdk/configure/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/b;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a$a;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/configure/a;)Lcom/naver/glink/android/sdk/configure/a;

    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/c$1;->a(Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V

    return-void
.end method
