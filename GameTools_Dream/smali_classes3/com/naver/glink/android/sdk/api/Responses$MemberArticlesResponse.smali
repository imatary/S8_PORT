.class public Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberArticlesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;
    }
.end annotation


# instance fields
.field public articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/model/Article;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->articles:Ljava/util/List;

    new-instance v0, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    return-void
.end method
