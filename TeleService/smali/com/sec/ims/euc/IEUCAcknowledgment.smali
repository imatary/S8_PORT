.class public Lcom/sec/ims/euc/IEUCAcknowledgment;
.super Lcom/sec/ims/euc/IEUC;
.source "IEUCAcknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/euc/IEUCAcknowledgment$1;,
        Lcom/sec/ims/euc/IEUCAcknowledgment$IEUCMessageData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/ims/euc/IEUC",
        "<",
        "Lcom/sec/ims/euc/IEUCAcknowledgment$IEUCMessageData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/euc/IEUCAcknowledgment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/euc/IEUCAcknowledgment$1;

    invoke-direct {v0}, Lcom/sec/ims/euc/IEUCAcknowledgment$1;-><init>()V

    sput-object v0, Lcom/sec/ims/euc/IEUCAcknowledgment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/euc/IEUC;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/euc/IEUC;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/ims/euc/IEUCAcknowledgment;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/euc/IEUCAcknowledgment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/euc/IEUCAcknowledgment;-><init>(Landroid/os/Parcel;)V

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

    const-class v3, Lcom/sec/ims/euc/IEUCAcknowledgment$IEUCMessageData;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/euc/IEUCAcknowledgment$IEUCMessageData;

    iput-object v3, p0, Lcom/sec/ims/euc/IEUCAcknowledgment;->mDefaultMessage:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/sec/ims/euc/IEUCAcknowledgment$IEUCMessageData;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Lcom/sec/ims/euc/IEUCAcknowledgment$IEUCMessageData;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/ims/euc/IEUCAcknowledgment;->mMessages:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/ims/euc/IEUCAcknowledgment;->mMessages:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCAcknowledgment;->mDefaultMessage:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCAcknowledgment;->mMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUCAcknowledgment;->mMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Lcom/sec/ims/euc/IEUCAcknowledgment$IEUCMessageData;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/euc/IEUCAcknowledgment$IEUCMessageData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/ims/euc/IEUC;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
