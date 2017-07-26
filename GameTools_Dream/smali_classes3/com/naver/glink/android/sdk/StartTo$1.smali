.class final Lcom/naver/glink/android/sdk/StartTo$1;
.super Ljava/lang/Object;
.source "StartTo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/StartTo;
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
        "Lcom/naver/glink/android/sdk/StartTo;",
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
.method public a(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/StartTo;
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/naver/glink/android/sdk/StartTo$To;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/naver/glink/android/sdk/StartTo;-><init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;Lcom/naver/glink/android/sdk/StartTo$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/naver/glink/android/sdk/StartTo;
    .locals 1

    new-array v0, p1, [Lcom/naver/glink/android/sdk/StartTo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/StartTo$1;->a(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/StartTo$1;->a(I)[Lcom/naver/glink/android/sdk/StartTo;

    move-result-object v0

    return-object v0
.end method
