.class public Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$ConnectionOptionalHosts;
.super Ljava/lang/Object;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionOptionalHosts"
.end annotation


# instance fields
.field private ssl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnection()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$ConnectionOptionalHosts;->ssl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$ConnectionOptionalHosts;->url:Ljava/lang/String;

    goto :goto_0
.end method
