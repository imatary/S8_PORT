.class Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
.super Ljava/lang/Object;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPanDevice"
.end annotation


# instance fields
.field private mIface:Ljava/lang/String;

.field private mLocalRole:I

.field private mState:I

.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    return p1
.end method

.method constructor <init>(Lcom/android/bluetooth/pan/PanService;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    iput-object p3, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;

    iput p4, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    return-void
.end method
