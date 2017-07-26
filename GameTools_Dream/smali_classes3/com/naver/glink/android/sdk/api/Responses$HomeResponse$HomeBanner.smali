.class public Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Responses.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeBanner"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appScheme:Ljava/lang/String;

.field public articleId:I

.field public imageUrl:Ljava/lang/String;

.field public mediaType:Ljava/lang/String;

.field public videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->articleId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isImage()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->mediaType:Ljava/lang/String;

    const-string/jumbo v1, "I"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isMovie()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->mediaType:Ljava/lang/String;

    const-string/jumbo v1, "M"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->mediaType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->articleId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->appScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
