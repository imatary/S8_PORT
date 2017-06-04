.class public Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowShareTagShotDialogCmd.java"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->dismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->createTagImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->showShareDialog()V

    return-void
.end method

.method private createTagImage()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "CREATE_TAG_IMAGE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 8

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0179

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0178

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0080

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0177

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0176

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd$1;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd$2;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;)V

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd$3;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;)V

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showShareDialog()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_SHARE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;->showDialog()V

    return-void
.end method
