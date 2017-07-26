.class public Lcom/naver/glink/android/sdk/api/GResponses$PhotoKeyResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoKeyResponse"
.end annotation


# instance fields
.field public index:I

.field public key:Ljava/lang/String;

.field public uploaderIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$PhotoKeyResponse;->index:I

    return-void
.end method
