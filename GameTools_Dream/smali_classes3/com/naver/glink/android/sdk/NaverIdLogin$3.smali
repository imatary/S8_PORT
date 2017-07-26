.class final Lcom/naver/glink/android/sdk/NaverIdLogin$3;
.super Ljava/lang/Object;
.source "NaverIdLogin.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/NaverIdLogin;->getProfile(Landroid/content/Context;Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/NaverIdLogin$3;->a:Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/NaverIdLogin$3;->a:Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/NaverIdLogin$3;->a:Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/NaverIdLogin$3;->a(Ljava/lang/String;)V

    return-void
.end method
