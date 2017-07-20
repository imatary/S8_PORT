.class public Lcom/sec/ims/euc/IEUCRequest;
.super Lcom/sec/ims/euc/IEUC;
.source "IEUCRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/euc/IEUCRequest$1;,
        Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;,
        Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/ims/euc/IEUC",
        "<",
        "Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/euc/IEUCRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsExternal:Z

.field private mIsPinRequested:Z

.field private mTimeout:J

.field private mType:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/euc/IEUCRequest$1;

    invoke-direct {v0}, Lcom/sec/ims/euc/IEUCRequest$1;-><init>()V

    sput-object v0, Lcom/sec/ims/euc/IEUCRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/euc/IEUC;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/sec/ims/euc/IEUC;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/ims/euc/IEUCRequest;->readFromParcel(Landroid/os/Parcel;)V

    invoke-static {}, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;->values()[Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mType:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mIsPinRequested:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sec/ims/euc/IEUCRequest;->mIsExternal:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mTimeout:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/euc/IEUCRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/euc/IEUCRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected readMessageData(Landroid/os/Parcel;)V
    .locals 6

    const-class v3, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;

    iput-object v3, p0, Lcom/sec/ims/euc/IEUCRequest;->mDefaultMessage:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/ims/euc/IEUCRequest;->mMessages:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/ims/euc/IEUCRequest;->mMessages:Ljava/util/Map;

    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected writeMessageData(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mDefaultMessage:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/euc/IEUCRequest$IEUCMessageData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/sec/ims/euc/IEUC;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mType:Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;

    invoke-virtual {v0}, Lcom/sec/ims/euc/IEUCRequest$EUCRequestType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mIsPinRequested:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mIsExternal:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/sec/ims/euc/IEUCRequest;->mTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
