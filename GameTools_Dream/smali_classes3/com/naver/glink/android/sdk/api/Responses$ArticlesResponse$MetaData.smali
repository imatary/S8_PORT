.class public Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;
.super Lcom/naver/glink/android/sdk/api/Responses;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaData"
.end annotation


# instance fields
.field public isLast:Z

.field public isLastPage:Z

.field public lastArticleId:I

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Responses;-><init>()V

    return-void
.end method
