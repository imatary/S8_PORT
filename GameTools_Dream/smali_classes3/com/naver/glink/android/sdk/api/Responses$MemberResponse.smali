.class public Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;
    }
.end annotation


# instance fields
.field public articleCount:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

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

.field public backgroundImage:Ljava/lang/String;

.field public cafeId:I

.field public gameUserId:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public joinDate:Ljava/lang/String;

.field public lastVisitDate:Ljava/lang/String;

.field public memberId:Ljava/lang/String;

.field public memberLevel:I

.field public memberLevelName:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public profileImage:Ljava/lang/String;

.field public visitCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articles:Ljava/util/List;

    new-instance v0, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articleCount:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

    return-void
.end method
