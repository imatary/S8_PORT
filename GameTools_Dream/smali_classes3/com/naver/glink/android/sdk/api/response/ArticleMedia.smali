.class public Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
.super Ljava/lang/Object;
.source "ArticleMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;
    }
.end annotation


# instance fields
.field public articleId:I

.field private deleted:Z

.field private formattedWriteDate:Ljava/lang/String;

.field public gif:Z

.field private hasAuthority:Z

.field public height:I

.field public logoImage:Ljava/lang/String;

.field private scraped:Z

.field public subject:Ljava/lang/String;

.field private thumbnailImage:Ljava/lang/String;

.field public type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

.field public url:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public width:I

.field private writeDateTime:Ljava/lang/String;

.field public writerNickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->articleId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->hasAuthority:Z

    return-void
.end method

.method public static from(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;-><init>()V

    sget-object v1, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->VIDEO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->videoId:Ljava/lang/String;

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->vid:Ljava/lang/String;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->imageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->logoImage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static from(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    instance-of v3, v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->g()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {v3}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;-><init>()V

    sget-object v4, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->PHOTO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iput-object v4, v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iput-object v0, v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {v3}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;-><init>()V

    sget-object v4, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->VIDEO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iput-object v4, v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->vid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->logoImage:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static from(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {v3}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;-><init>()V

    sget-object v4, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->PHOTO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iput-object v4, v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iput-object v0, v3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getErrorMessage(Z)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->hasAuthority:Z

    if-nez v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->all_media_no_permissions:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->scraped:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "\ubaa9\ub85d\uc5d0\uc11c \uc7ac\uc0dd\ud560 \uc218 \uc5c6\ub294 \ub3d9\uc601\uc0c1\uc785\ub2c8\ub2e4."

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Scrapped"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->deleted:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Deleted"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getFormattedWriteDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->formattedWriteDate:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->writeDateTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->formattedWriteDate:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->formattedWriteDate:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "ff159_159"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->thumbnailImage:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewerImageUri()Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "wa1280"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->logoImage:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public hasError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->hasAuthority:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->scraped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->deleted:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoto()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    sget-object v1, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->PHOTO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    sget-object v1, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->VIDEO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
