.class Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mArg:Ljava/lang/String;

.field mCommand:Ljava/lang/String;

.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mCommand:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    return-void
.end method
