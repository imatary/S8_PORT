.class public Lcom/sec/ims/euc/IEUCSystemRequest;
.super Lcom/sec/ims/euc/IEUC;
.source "IEUCSystemRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/euc/IEUCSystemRequest$1;,
        Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;,
        Lcom/sec/ims/euc/IEUCSystemRequest$IEUCMessageData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/ims/euc/IEUC",
        "<",
        "Lcom/sec/ims/euc/IEUCSystemRequest$IEUCMessageData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/euc/IEUCSystemRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMessage:Lcom/sec/ims/euc/IEUCSystemRequest$IEUCMessageData;

.field private mType:Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/euc/IEUCSystemRequest$1;

    invoke-direct {v0}, Lcom/sec/ims/euc/IEUCSystemRequest$1;-><init>()V

    sput-object v0, Lcom/sec/ims/euc/IEUCSystemRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/ims/euc/IEUC;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/ims/euc/IEUCSystemRequest;->readFromParcel(Landroid/os/Parcel;)V

    invoke-static {}, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;->values()[Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCSystemRequest;->mType:Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    const-class v0, Lcom/sec/ims/euc/IEUCSystemRequest$IEUCMessageData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/euc/IEUCSystemRequest$IEUCMessageData;

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCSystemRequest;->mMessage:Lcom/sec/ims/euc/IEUCSystemRequest$IEUCMessageData;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/euc/IEUCSystemRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/euc/IEUCSystemRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected readMessageData(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method protected writeMessageData(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/ims/euc/IEUC;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCSystemRequest;->mType:Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;

    invoke-virtual {v0}, Lcom/sec/ims/euc/IEUCSystemRequest$EUCSystemRequestType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCSystemRequest;->mMessage:Lcom/sec/ims/euc/IEUCSystemRequest$IEUCMessageData;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
