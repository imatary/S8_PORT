.class public Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowStorageChoiceDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOperationType:I

.field private mStorageChoiceDialog:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

.field private mTopSetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mOperationType:I

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mStorageChoiceDialog:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mStorageChoiceDialog:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->dismissDialog()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mStorageChoiceDialog:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mStorageChoiceDialog:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mStorageChoiceDialog:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->showDialog()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    const/4 v3, 0x3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mOperationType:I

    array-length v2, v0

    if-le v2, v3, :cond_0

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mTopSetPath:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->showDialog()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->dismissDialog()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_CHOICE_NEW_ALBUM_STORAGE:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mOperationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mTopSetPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SHOW_NEW_ALBUM_DIALOG"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
