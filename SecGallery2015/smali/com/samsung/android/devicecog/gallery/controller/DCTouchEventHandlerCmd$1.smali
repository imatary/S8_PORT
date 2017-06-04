.class Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$1;
.super Landroid/os/Handler;
.source "DCTouchEventHandlerCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->initHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;

    # invokes: Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->handleTouchEventState(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->access$000(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
