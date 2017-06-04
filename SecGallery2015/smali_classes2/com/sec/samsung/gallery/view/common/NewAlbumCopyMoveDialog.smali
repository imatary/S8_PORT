.class public Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "NewAlbumCopyMoveDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewAlbumCopyMoveDialog"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mIsClickConsumed:Z

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mIsClickConsumed:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->createDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->handleOnClick(I)V

    return-void
.end method

.method private createDialog()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->getDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$3;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog$3;-><init>(Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method private getDialogMessage()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->getMediaTypeOfItemsToDelete()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    if-le v0, v3, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    if-le v0, v3, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    if-le v0, v3, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    const v2, 0x7f0a00c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mCtx:Landroid/content/Context;

    const v2, 0x7f0a00c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getMediaTypeOfItemsToDelete()I
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v4, v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    or-int/2addr v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NewAlbumCopyMoveDialog"

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method private handleOnClick(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mIsClickConsumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mIsClickConsumed:Z

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
