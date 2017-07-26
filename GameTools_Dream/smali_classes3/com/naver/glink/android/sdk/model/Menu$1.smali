.class final Lcom/naver/glink/android/sdk/model/Menu$1;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/model/Menu;
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
        "Lcom/naver/glink/android/sdk/model/Menu;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 2

    new-instance v1, Lcom/naver/glink/android/sdk/model/Menu;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/model/Menu;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu$Type;

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/model/Menu;->access$002(Lcom/naver/glink/android/sdk/model/Menu;Lcom/naver/glink/android/sdk/model/Menu$Type;)Lcom/naver/glink/android/sdk/model/Menu$Type;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/model/Menu;->access$102(Lcom/naver/glink/android/sdk/model/Menu;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/model/Menu;->access$202(Lcom/naver/glink/android/sdk/model/Menu;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/model/Menu;->access$302(Lcom/naver/glink/android/sdk/model/Menu;Z)Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/model/Menu$1;->createFromParcel(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/naver/glink/android/sdk/model/Menu;
    .locals 1

    new-array v0, p1, [Lcom/naver/glink/android/sdk/model/Menu;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/model/Menu$1;->newArray(I)[Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    return-object v0
.end method
