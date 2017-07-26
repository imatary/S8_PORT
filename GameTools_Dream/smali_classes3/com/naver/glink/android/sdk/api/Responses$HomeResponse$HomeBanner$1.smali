.class final Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner$1;
.super Ljava/lang/Object;
.source "Responses.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;
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
        "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->mediaType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->videoId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->articleId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->appScheme:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner$1;->createFromParcel(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;
    .locals 1

    new-array v0, p1, [Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner$1;->newArray(I)[Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    move-result-object v0

    return-object v0
.end method
