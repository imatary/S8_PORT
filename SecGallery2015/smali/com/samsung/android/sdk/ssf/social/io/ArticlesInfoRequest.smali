.class public Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;
.super Ljava/lang/Object;
.source "ArticlesInfoRequest.java"


# instance fields
.field protected app_id:Ljava/lang/String;

.field protected articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected group_id:Ljava/lang/String;

.field protected sid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setArticles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;->articles:Ljava/util/List;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;->group_id:Ljava/lang/String;

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;->sid:I

    return-void
.end method
