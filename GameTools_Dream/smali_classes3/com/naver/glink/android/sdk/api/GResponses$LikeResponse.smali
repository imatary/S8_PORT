.class public Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LikeResponse"
.end annotation


# instance fields
.field public categoryId:Ljava/lang/String;

.field public contentsId:Ljava/lang/String;

.field public count:I

.field public countType:Ljava/lang/String;

.field public displayId:Ljava/lang/String;

.field public isReacted:Z

.field public reactionType:Ljava/lang/String;

.field public serviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    return-void
.end method
