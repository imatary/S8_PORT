.class public Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;
.super Ljava/lang/Object;
.source "ChangePlayerItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_ChangePlayerItem"

.field public static final TYPE_MY_DEVICE:I = 0x1

.field public static final TYPE_NEARBY_DEVICE:I = 0x2

.field public static final TYPE_WFD_DEVICE:I = 0x3

.field private static sMyDeviceItem:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;


# instance fields
.field private mDevice:Ljava/lang/Object;

.field private mDeviceID:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:I

.field private mIconUri:Landroid/net/Uri;

.field private mIsCurrentPlayDevice:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mIconUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDeviceName:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDeviceType:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDeviceID:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDevice:Ljava/lang/Object;

    iput-boolean p6, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mIsCurrentPlayDevice:Z

    return-void
.end method

.method public static final getMyDevice(Landroid/content/Context;)Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;
    .locals 7

    const/4 v1, 0x0

    const v3, 0x7f07006b

    sget-object v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->sMyDeviceItem:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;-><init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->sMyDeviceItem:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;

    :goto_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->sMyDeviceItem:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->sMyDeviceItem:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDeviceName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getDevice()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDevice:Ljava/lang/Object;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mDeviceType:I

    return v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIsCurrentPlayDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->mIsCurrentPlayDevice:Z

    return v0
.end method
