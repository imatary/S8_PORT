.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;
.super Ljava/lang/Object;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDataEvent"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

.field valueStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->valueStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->device:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->valueStr:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;[BLcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;[B)V

    return-void
.end method
