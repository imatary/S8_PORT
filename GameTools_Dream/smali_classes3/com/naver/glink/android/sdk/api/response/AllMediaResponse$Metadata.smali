.class public Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "AllMediaResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field public isLast:Z

.field public lastArticleId:I

.field public lastAttachId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    return-void
.end method
