.class final Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment$1;
.super Ljava/lang/Object;
.source "VideoAttachment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;
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
        "Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;",
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
.method public a(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;-><init>(Landroid/net/Uri;)V

    return-object v1
.end method

.method public a(I)[Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;
    .locals 1

    new-array v0, p1, [Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment$1;->a(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment$1;->a(I)[Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    move-result-object v0

    return-object v0
.end method
