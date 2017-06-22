.class public Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;
    }
.end annotation


# static fields
.field private static final PROCESS_NEXT_CMD:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCmdHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;

.field private mCmdHandlerThread:Landroid/os/HandlerThread;

.field private mCmdQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->processNextCommand()V

    return-void
.end method

.method private dumpQueue()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;

    iget-object v2, v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const/16 v2, 0x5d

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method private processNextCommand()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    const-string v3, "No next command. Return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handling command - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$1;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$se$engine$CameraCommand$COMMAND_TYPE:[I

    iget-object v3, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    const-string v3, "No handler for camera command. this should not be happened."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid Camera Command."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    const-string v3, "onError callback is posted from camera device. Ignore RuntimeException to SecCamera access."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_0
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doOpenCamera()V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    :pswitch_1
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doCloseCamera()V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCamcorderPreviewParameterSync()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraPreviewParameterSync()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doInitializeParameter()V

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doTakePictureAsync()V

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    iget-object v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mParams:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mParams:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_7
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mParams:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doStartPreviewAsync(Z)V

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doStartPreviewAsync(Z)V

    goto/16 :goto_2

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_8
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEW_STARTING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doStopPreview()V

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :pswitch_9
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doSwitchCamera()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_a
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doSwitchCamera(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_b
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doSwitchCamera(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_c
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doPrepareRecordingAsync()V

    goto/16 :goto_2

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_d
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doStartVideoRecordingAsync()V

    goto/16 :goto_2

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_e
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doPauseVideoRecording()V

    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_f
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doResumeVideoRecording()V

    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_10
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doStopVideoRecording()V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_11
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doCancelVideoRecording()V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    :goto_a
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :pswitch_12
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doAutoFocusAsync()V

    :goto_b
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_13
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doSwitchPreviewAspectForRecording(Z)V

    :goto_c
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_14
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doSwitchPreviewAspectForRecording(Z)V

    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :pswitch_15
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doSwitchPreviewAspectForSwitchingCamera()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_16
    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    iget-object v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mParams:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doLockOrientationChange(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_17
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doExpandToRecorderSize()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    goto/16 :goto_2

    :pswitch_18
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doNotifyRecordingFinished()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    :cond_16
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public addCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->dumpQueue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearRequests()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public completeCommand()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->dumpQueue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFirstRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;

    iget-object v2, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    monitor-exit v4

    :goto_0
    return v2

    :cond_0
    monitor-exit v4

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0
.end method

.method public removeRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;

    iget-object v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;

    iget-object v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    monitor-exit v3

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startHandler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CommandThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;

    :cond_0
    return-void
.end method

.method public stopHandler()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitForQueueEmpty(J)V
    .locals 7

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->mCmdQueue:Ljava/util/Queue;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, p1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    const-string v4, "wait for command queue to be empty - Timeout."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->TAG:Ljava/lang/String;

    const-string v3, "Wait done!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method
