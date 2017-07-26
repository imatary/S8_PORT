.class public Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayUrlResponse"
.end annotation


# instance fields
.field public isEncodingComplete:Z

.field public playUrl:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;->isEncodingComplete:Z

    return-void
.end method
