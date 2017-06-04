.class public Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "DisplayListenerManageCmd.java"


# static fields
.field public static final OP_REGISTER:I = 0x0

.field public static final OP_UNREGISTER:I = 0x1


# instance fields
.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mGalleryStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)Lcom/sec/android/gallery3d/app/StateManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mGalleryStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mGalleryStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setEnableRotationCache(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mGalleryStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setEnableRotationCache(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mGalleryStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mWindowManager:Landroid/view/WindowManager;

    aget-object v3, v2, v4

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->registerReceiver()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->unregisterReceiver()V

    goto :goto_0
.end method
