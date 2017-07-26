.class public Lcom/naver/glink/android/sdk/model/Article;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Article.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/naver/glink/android/sdk/model/Article;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_ARTICLE_ID:I = -0x1


# instance fields
.field public articleId:I

.field public commentCount:I

.field public formattedWriteDate:Ljava/lang/String;

.field public gif:Z

.field public likeCount:I

.field public likeIt:Z

.field public likedItDateTime:Ljava/lang/String;

.field public movie:Z

.field public readCount:I

.field public subject:Ljava/lang/String;

.field public thumbnailImage:Ljava/lang/String;

.field public writeDate:Ljava/lang/String;

.field public writeDateTime:Ljava/lang/String;

.field public writerId:Ljava/lang/String;

.field public writerNickname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/model/Article$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/model/Article$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/model/Article;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormattedWriteDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->writeDateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->writeDate:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->formattedWriteDate:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->writeDateTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->formattedWriteDate:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->formattedWriteDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->writerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/model/Article;->movie:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/naver/glink/android/sdk/model/Article;->commentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->writeDateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/naver/glink/android/sdk/model/Article;->readCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/naver/glink/android/sdk/model/Article;->likeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->writerNickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->thumbnailImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Article;->likedItDateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
