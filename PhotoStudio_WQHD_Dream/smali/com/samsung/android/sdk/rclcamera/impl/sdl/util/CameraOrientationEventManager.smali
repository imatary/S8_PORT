.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;
.super Ljava/lang/Object;
.source "CameraOrientationEventManager.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$CameraOrientationEventListener;
    }
.end annotation


# static fields
.field private static final SENSORHUB_FEATURE_NAME:Ljava/lang/String; = "com.sec.feature.sensorhub"

.field private static final SENSORHUB_SERVICE_NAME:Ljava/lang/String; = "scontext"

.field private static final TAG:Ljava/lang/String;

.field private static mIsSContextListenerAvailable:Z

.field private static mLastOrientation:I

.field private static mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$CameraOrientationEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mOrientationListener:Landroid/view/OrientationEventListener;

.field private static mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private static mSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.53/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sput-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    sput-boolean v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    sput-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    sput v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I

    sput-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "scontext"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    sput-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    :cond_0
    sget-boolean v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;

    const-string v2, "using SContextListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->setSContextListener(Landroid/hardware/scontext/SContextListener;)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;

    const-string v2, "using OrientationEventListener of android"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->notifyOrientationChaged(I)V

    return-void
.end method

.method private convertSContextOrientationToDegree(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static disable()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;

    const-string v1, "orientation listener disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method public static enable()V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;

    const-string v2, "orientation listener enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public static isSContextOrientationEventListenerAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    return v0
.end method

.method private notifyOrientationChaged(I)V
    .locals 4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;

    const-string v2, "notifyOrientationChaged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput p1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$CameraOrientationEventListener;

    sget v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static registerListener(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 1

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setSContextListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;

    const-string v1, "setSContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    return-void
.end method

.method public static unregisterListener(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5

    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->convertSContextOrientationToDegree(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->notifyOrientationChaged(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
