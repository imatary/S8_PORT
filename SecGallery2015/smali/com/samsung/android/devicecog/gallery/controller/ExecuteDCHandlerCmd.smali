.class public Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ExecuteDCHandlerCmd.java"


# static fields
.field private static final IGNORE_STATE_ID_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Create"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "EmptyBin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Delete"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Leave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Rename"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SplitState"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SortOrder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private handleCommand(Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "ExecuteDCHandlerCmd"

    const-string/jumbo v1, "BixbyGallery : dcCmdExecutable is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "dcCmdExecutable is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->IGNORE_STATE_ID_SET:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ExecuteDCHandlerCmd"

    const-string/jumbo v1, "Ignore user confirm state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;-><init>(Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Landroid/app/Activity;

    iput-object v4, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    aget-object v0, v2, v4

    check-cast v0, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    const/4 v4, 0x2

    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v2, v4

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v0, v3, v1}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->handleCommand(Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
