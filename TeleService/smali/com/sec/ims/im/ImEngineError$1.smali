.class final Lcom/sec/ims/im/ImEngineError$1;
.super Ljava/lang/Object;
.source "ImEngineError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/im/ImEngineError;
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
        "Lcom/sec/ims/im/ImEngineError;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/im/ImEngineError;
    .locals 2

    invoke-static {}, Lcom/sec/ims/im/ImEngineError;->values()[Lcom/sec/ims/im/ImEngineError;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/im/ImEngineError$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/im/ImEngineError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/ims/im/ImEngineError;
    .locals 1

    new-array v0, p1, [Lcom/sec/ims/im/ImEngineError;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/im/ImEngineError$1;->newArray(I)[Lcom/sec/ims/im/ImEngineError;

    move-result-object v0

    return-object v0
.end method
