.class public Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$ConnectionOptionalHosts;,
        Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$ConnectionApis;,
        Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Connection;,
        Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$OptionalHosts;,
        Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;,
        Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;
    }
.end annotation


# instance fields
.field public buildDate:J

.field public connection:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Connection;

.field public optional:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    return-void
.end method
