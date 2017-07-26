.class final Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "NeoIdSdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
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

.field final synthetic b:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$1;->b:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$1;->b:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    invoke-static {v0, v1, p1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$1;->a(Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V

    return-void
.end method
