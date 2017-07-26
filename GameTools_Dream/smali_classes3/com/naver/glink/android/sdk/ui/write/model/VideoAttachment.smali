.class public Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;
.super Lcom/naver/glink/android/sdk/ui/write/model/Attachment;
.source "VideoAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
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

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d:Landroid/net/Uri;

    return-void
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

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    instance-of v0, v0, Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "mediaType"

    const-string/jumbo v3, "MOVIE"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "htmlTag"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;->movieHtmlTag:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "param"

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;->attachmovielist:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    instance-of v0, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "video"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "vId"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;->videoId:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "authFlag"

    const-string/jumbo v3, "N"

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sourceWidth"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;->sourceWidth:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sourceHeight"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;->sourceHeight:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "originalWidth"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;->sourceWidth:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "originalHeight"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;->sourceHeight:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "fileSize"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;->fileSize:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "playTime"

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;->playTime:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "logoImage"

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;->logoImage:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_0

    :cond_2
    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;->b()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->c:Ljava/util/Map;

    const-string/jumbo v2, "vId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->c:Ljava/util/Map;

    const-string/jumbo v2, "logoImage"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->c:Ljava/util/Map;

    const-string/jumbo v2, "logoImage"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
