.class final Lcom/naver/glink/android/sdk/model/Article$1;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/model/Article;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/naver/glink/android/sdk/model/Article;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/model/Article;
    .locals 2

    new-instance v1, Lcom/naver/glink/android/sdk/model/Article;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/model/Article;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/naver/glink/android/sdk/model/Article;->writerId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/naver/glink/android/sdk/model/Article;->movie:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/naver/glink/android/sdk/model/Article;->commentCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/naver/glink/android/sdk/model/Article;->writeDateTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/naver/glink/android/sdk/model/Article;->readCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/naver/glink/android/sdk/model/Article;->subject:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/naver/glink/android/sdk/model/Article;->likeCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/naver/glink/android/sdk/model/Article;->writerNickname:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/naver/glink/android/sdk/model/Article;->thumbnailImage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/naver/glink/android/sdk/model/Article;->likedItDateTime:Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/model/Article$1;->createFromParcel(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/model/Article;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/naver/glink/android/sdk/model/Article;
    .locals 1

    new-array v0, p1, [Lcom/naver/glink/android/sdk/model/Article;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/model/Article$1;->newArray(I)[Lcom/naver/glink/android/sdk/model/Article;

    move-result-object v0

    return-object v0
.end method
