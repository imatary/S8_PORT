.class Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;
.super Landroid/os/Handler;
.source "SpenHoverPointerIconWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetUpdateHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper$SetUpdateHandle;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->mIsUpdated:Z
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->access$102(Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;Z)Z

    return-void
.end method
