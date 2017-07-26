.class public Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;
.super Lcom/naver/glink/android/sdk/ui/write/model/Attachment;
.source "ImageAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    const-string/jumbo v1, "thumbnail"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    instance-of v0, v0, Lcom/naver/glink/android/sdk/api/Responses$AttachImageResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$AttachImageResponse;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "mediaType"

    const-string/jumbo v3, "IMAGE"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "htmlTag"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/Responses$AttachImageResponse;->imageHtmlTag:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "param"

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$AttachImageResponse;->attachfiles:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    check-cast v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "photo"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "url"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "path"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->path:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "fileName"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->fileName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "width"

    iget v3, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "height"

    iget v3, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "colorSpace"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->colorSpace:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "fileSize"

    iget v3, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->fileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "thumbnail"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->thumbnail:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "animatedCnt"

    iget v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->animatedCnt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;->b()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    const-string/jumbo v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    const-string/jumbo v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    const-string/jumbo v1, "animatedCnt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->e()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/model/ThumbnailUri;->getViewer(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/model/ThumbnailUri;->getArticle(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->thumbnail:Ljava/lang/String;

    const-string/jumbo v1, "type=f1"

    const-string/jumbo v2, "type=s3"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/model/ThumbnailUri;->getArticle(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
