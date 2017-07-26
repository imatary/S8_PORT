.class public Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reaction"
.end annotation


# instance fields
.field public count:I

.field public isReacted:Z

.field public reactionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    return-void
.end method
