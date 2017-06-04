.class public Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowImportDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowImportDialogCmd"

.field private static mDuplicateNameDialog:Landroid/app/AlertDialog;

.field private static mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

.field private static mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;


# instance fields
.field private mAllDownloaded:Z

.field private mContext:Landroid/content/Context;

.field private mCopyCompleted:Z

.field private mDest:Ljava/io/File;

.field private mImportFailed:Z

.field private mIsCancel:Z

.field private mIsCheck:Z

.field private mIsFileNameUsed:Z

.field private mIsRename:Z

.field private mIsReplace:Z

.field private mIsSingleItem:Z

.field private final mLock:Ljava/lang/Object;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MtpImage;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mShowCancelToast:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mAllDownloaded:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mImportFailed:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsFileNameUsed:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mShowCancelToast:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDest:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDest:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->showDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mAllDownloaded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mImportFailed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mImportFailed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mShowCancelToast:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mShowCancelToast:Z

    return p1
.end method

.method static synthetic access$1700()Lcom/sec/samsung/gallery/view/common/RenameDialog;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Lcom/sec/samsung/gallery/view/common/RenameDialog;
    .locals 0

    sput-object p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    return-object p0
.end method

.method static synthetic access$1800()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDuplicateNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDuplicateNameDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsSingleItem:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/data/MtpImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MtpImage;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->showRenameDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->resetDialogPreferences(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mCopyCompleted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mCopyCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsCheck:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsRename:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsRename:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsReplace:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsReplace:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsCancel:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsCancel:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsFileNameUsed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsFileNameUsed:Z

    return p1
.end method

.method public static cancelImportTask()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    :cond_0
    return-void
.end method

.method private resetDialogPreferences(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsCheck:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsCancel:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsRename:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsReplace:Z

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsSingleItem:Z

    return-void
.end method

.method private showDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 10

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00be

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f040114

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f12004f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f120266

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a01a7

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a036b

    new-instance v7, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;

    invoke-direct {v7, p0, v0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Landroid/widget/CheckBox;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0370

    new-instance v7, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;

    invoke-direct {v7, p0, p2, p1, v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a03e3

    new-instance v7, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;

    invoke-direct {v7, p0, v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDuplicateNameDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDuplicateNameDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$5;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$5;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v5, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDuplicateNameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRenameDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x2e

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDest:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/view/common/RenameDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    sget-object v4, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentName(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setOrgName(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentFilePath(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->showMediaRenameDialog()V

    sget-object v4, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;

    invoke-direct {v5, p0, v0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v3

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    aget-object v1, v0, v4

    if-eqz v1, :cond_0

    aget-object v1, v0, v4

    check-cast v1, Lcom/sec/android/gallery3d/data/MtpImage;

    :goto_0
    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MtpImage;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mShowCancelToast:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mAllDownloaded:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mImportFailed:Z

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$1;)V

    sput-object v1, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    sget-object v1, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mMTPImportTask:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mShowCancelToast:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mAllDownloaded:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0213

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method
