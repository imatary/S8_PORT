.class public Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "GLIdleTimerCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;,
        Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0xc8L

.field private static final MSG_RUN_LISTENER:I = 0x0

.field private static final MSG_RUN_LISTENER_AFTER_EXPIRE:I = 0x2

.field private static final MSG_RUN_LISTENER_WITH_DELAY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLIdleTimerCmd"


# instance fields
.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mOnGLIdleListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->handleMsgRunListener()V

    return-void
.end method

.method private addIdleListener(Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    :cond_0
    const-string/jumbo v0, "GLIdleTimerCmd"

    const-string/jumbo v1, "ADD_GL_IDLE_LISTENER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getGalleryCurrentStatus([Ljava/lang/Object;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method private handleCommands(Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;[Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$2;->$SwitchMap$com$sec$samsung$gallery$controller$GLIdleTimerCmd$GLIdleTimerCmdType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    aget-object v2, p2, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->getGalleryCurrentStatus([Ljava/lang/Object;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    aget-object v1, p2, v6

    check-cast v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->addIdleListener(Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;)V

    goto :goto_0

    :pswitch_4
    aget-object v1, p2, v6

    check-cast v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->removeIdleListener(Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleMsgRunListener()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "GLIdleTimerCmd"

    const-string/jumbo v3, "MSG_RUN_LISTENER"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;->onGLIdle()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private removeIdleListener(Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "GLIdleTimerCmd"

    const-string/jumbo v1, "REMOVE_GL_IDLE_LISTENER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->mOnGLIdleListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;->handleCommands(Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;[Ljava/lang/Object;)V

    return-void
.end method
