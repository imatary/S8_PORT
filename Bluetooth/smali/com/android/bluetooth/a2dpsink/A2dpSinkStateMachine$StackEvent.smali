.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;
.super Ljava/lang/Object;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackEvent"
.end annotation


# instance fields
.field audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

.field type:I

.field valueInt:I


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->type:I

    iput v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iput p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)V

    return-void
.end method
