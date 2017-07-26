.class public Lcom/naver/glink/android/sdk/api/Responses$Property;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;
    }
.end annotation


# instance fields
.field public contents:Ljava/lang/String;

.field public resolvedArticleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;",
            ">;"
        }
    .end annotation
.end field

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$Property;->resolvedArticleList:Ljava/util/List;

    return-void
.end method
