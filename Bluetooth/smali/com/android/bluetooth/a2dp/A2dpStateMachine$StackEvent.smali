.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
.super Ljava/lang/Object;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackEvent"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

.field type:I

.field valueInt:I

.field valueInt2:I


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt2:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    return-void
.end method
