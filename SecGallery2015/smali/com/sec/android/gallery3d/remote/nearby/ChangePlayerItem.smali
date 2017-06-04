.class public Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;
.super Ljava/lang/Object;
.source "ChangePlayerItem.java"


# static fields
.field public static final TYPE_MY_DEVICE:I = 0x1

.field public static final TYPE_NEARBY_DEVICE:I = 0x2

.field public static final TYPE_WFD_DEVICE:I = 0x3


# instance fields
.field private final mDevice:Ljava/lang/Object;

.field private final mDeviceID:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mDeviceType:I

.field private final mIconUri:Landroid/net/Uri;

.field private final mIsCurrentPlayDevice:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mIconUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mDeviceName:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mDeviceType:I

    iput-object p4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mDeviceID:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mDevice:Ljava/lang/Object;

    iput-boolean p6, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mIsCurrentPlayDevice:Z

    return-void
.end method


# virtual methods
.method public getDevice()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mDevice:Ljava/lang/Object;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mDeviceType:I

    return v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIsCurrentPlayDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->mIsCurrentPlayDevice:Z

    return v0
.end method
