.class public Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArticlesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;
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

.field public menu:Lcom/naver/glink/android/sdk/model/Menu;

.field public metadata:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;

.field public notices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/model/Article;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->articles:Ljava/util/List;

    new-instance v0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->notices:Ljava/util/List;

    return-void
.end method
