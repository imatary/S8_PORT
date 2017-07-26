.class public Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachAuthResponse"
.end annotation


# instance fields
.field public index:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;->index:I

    return-void
.end method
