.class public Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;
.super Ljava/lang/Object;
.source "VendorSpecificCommandVO.java"


# instance fields
.field private mAppId:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;->mAppId:I

    iput-object p1, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;->mAppId:I

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;->mMessage:Ljava/lang/String;

    return-object v0
.end method
