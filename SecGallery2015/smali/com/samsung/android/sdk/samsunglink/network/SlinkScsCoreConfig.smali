.class public Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;
.super Ljava/lang/Object;
.source "SlinkScsCoreConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_VERSION:Ljava/lang/Long;


# instance fields
.field private mGroupId:Ljava/lang/String;

.field private mInstanceId:Ljava/lang/String;

.field private mPeerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->PARCEL_VERSION:Ljava/lang/Long;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->PARCEL_VERSION:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/ParcelFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unexpected parcel version. Got version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Expected version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->PARCEL_VERSION:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->setPeerId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->setInstanceId(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mPeerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mInstanceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mPeerId:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mInstanceId:Ljava/lang/String;

    return-void
.end method

.method public setPeerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->mPeerId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->PARCEL_VERSION:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->getPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
