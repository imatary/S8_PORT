.class public Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowPermissionRequestDialogCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;IZ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isShowingGooglePermissionDialog()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    :cond_0
    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p3}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->showPermissionRationaleDialog()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->setPermissionRequested(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setShowingGooglePermissionDialog(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v3, v2, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    aget-object v5, v1, v6

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aget-object v4, v1, v0

    check-cast v4, Lcom/sec/samsung/gallery/controller/DialogVisibility;

    sget-object v5, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    if-ne v4, v5, :cond_2

    const/4 v5, 0x2

    aget-object v5, v1, v5

    check-cast v5, [Ljava/lang/String;

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x70

    if-eq v2, v5, :cond_1

    :goto_0
    invoke-direct {p0, v3, v2, v0}, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->showPermissionRequestDialog([Ljava/lang/String;IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/sec/samsung/gallery/controller/DialogVisibility;->HIDE:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    goto :goto_1
.end method
