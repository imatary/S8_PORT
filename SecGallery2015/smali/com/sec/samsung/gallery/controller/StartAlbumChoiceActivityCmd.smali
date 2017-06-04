.class public Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartAlbumChoiceActivityCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;
    }
.end annotation


# static fields
.field private static final IS_CREATE_ALBUM_TOP:Z

.field public static final OP_COLLECT_EVENT_ALBUM:I = 0x7

.field public static final OP_COPY:I = 0x0

.field public static final OP_DRAG_MOVE:I = 0x2

.field public static final OP_MOVE:I = 0x1

.field private static final OP_REMOVE_KNOX:I = 0x4

.field public static final OP_REMOVE_SECRETBOX:I = 0x3

.field private static final REQUEST_ALBUM_LIST:I = 0xc00


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCopyMoveChoiceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

.field private mCreateAlbumDialog:Landroid/app/AlertDialog;

.field private mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

.field private mTopSetPath:Ljava/lang/String;

.field private operationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsCreateAlbumTop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->IS_CREATE_ALBUM_TOP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;Lcom/sec/samsung/gallery/core/Event;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->activeDialogForMoveCopyChoice(Lcom/sec/samsung/gallery/core/Event;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;[Lcom/sec/android/gallery3d/data/MediaSet;)[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->handleStartAlbumChoice()V

    return-void
.end method

.method private activeDialogForMoveCopyChoice(Lcom/sec/samsung/gallery/core/Event;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v4, v5, :cond_0

    const-string/jumbo v2, "Move"

    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "PSDD"

    invoke-static {v4, v5, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "operationType"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "topPath"

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "albumPath"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "START_ALBUM_OPERATIONS"

    invoke-virtual {v4, v5, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v2, "Copy"

    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCopyMoveChoiceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCopyMoveChoiceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->dismissDialog()V

    :cond_1
    return-void
.end method

.method private getDialogStringIdForUnableMoveOrCopyItem()I
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->IS_CREATE_ALBUM_TOP:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a047d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a047c

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a0484

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0483

    goto :goto_0

    :cond_3
    const v0, 0x7f0a044a

    goto :goto_0
.end method

.method private getDialogTitleStringIdForCreateAlbum()I
    .locals 3

    const v0, 0x7f0a00c5

    iget v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    iput v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->IS_CREATE_ALBUM_TOP:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0482

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x7f0a027e

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    iput v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const v0, 0x7f0a0360

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_KNOX:I

    iput v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const v0, 0x7f0a035c

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    iput v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    goto :goto_0

    :cond_5
    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    iput v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    sget-boolean v1, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->IS_CREATE_ALBUM_TOP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0a047b

    goto :goto_0
.end method

.method private handleStartAlbumChoice()V
    .locals 9

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v5, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->showCopyMoveChoiceDialog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v4

    if-ne v4, v3, :cond_4

    const v2, 0x7f0a0041

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->showCreateAlbumDialog(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->startActivityForAlbumChoice()V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v4

    if-gt v4, v7, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    if-ne v4, v7, :cond_8

    :cond_6
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumCopyMove:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->startActivityForAlbumChoice()V

    goto :goto_0

    :cond_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "copy-move-to-album"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v4, "operation"

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v4, v5, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    iget v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_9

    iget v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v4

    if-lt v4, v7, :cond_a

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->startActivityForAlbumChoice()V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->getDialogStringIdForUnableMoveOrCopyItem()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->showCreateAlbumDialog(I)V

    goto/16 :goto_0
.end method

.method private showCopyMoveChoiceDialog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCopyMoveChoiceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCopyMoveChoiceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCopyMoveChoiceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->showDialog()V

    return-void
.end method

.method private showCreateAlbumDialog(I)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->getDialogTitleStringIdForCreateAlbum()I

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00cf

    new-instance v3, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startActivityForAlbumChoice()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "operation"

    iget v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "topPath"

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "isMultiWindow"

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "activityWidth"

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0xc00

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    aget-object v4, v2, v5

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v1, v2, v4

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v4, 0x3

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mTopSetPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->dismissDialog()V

    :goto_0
    return-void

    :cond_0
    array-length v4, v2

    if-le v4, v6, :cond_1

    aget-object v4, v2, v6

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mTopSetPath:Ljava/lang/String;

    :cond_1
    array-length v4, v2

    if-le v4, v7, :cond_2

    aget-object v4, v2, v7

    check-cast v4, [Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v4, [Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mMediaSetArray:[Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->handleStartAlbumChoice()V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
