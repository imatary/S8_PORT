.class public Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "CheckStorageDialog.java"


# static fields
.field private static final MYFILES_PACKAGES_NAME:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field private static final SMART_MANAGER_ACTION_STORAGE:Ljava/lang/String; = "com.samsung.android.sm.ACTION_STORAGE"

.field private static final SMART_MANAGER_FLOATING_FEATURE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

.field private static final SMART_MANAGER_PACKAGES_NAME:Ljava/lang/String; = "com.samsung.android.sm"

.field private static final TAG:Ljava/lang/String; = "CheckStorageDialog"

.field private static final USE_LOW_STORAGE_MODE:Z


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mFromMyFiles:Z

.field private mShowEmptyDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->USE_LOW_STORAGE_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mFromMyFiles:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mShowEmptyDialog:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    if-nez p3, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mShowEmptyDialog:Z

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->checkMyFilesIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->createDialog()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->USE_LOW_STORAGE_MODE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->callSmartManager()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->callMyFiles()V

    return-void
.end method

.method private callMyFiles()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.myfiles"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CheckStorageDialog"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callSmartManager()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CheckStorageDialog"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkMyFilesIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mFromMyFiles:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "from-myfiles"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mFromMyFiles:Z

    :cond_0
    return-void
.end method

.method private checkMyfiles()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.app.myfiles"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSmartManager()Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private createDialog()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->USE_LOW_STORAGE_MODE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    const v2, 0x7f0a02e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSmartManagerForLowStorage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->checkSmartManager()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mShowEmptyDialog:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->setStorageDialog(Landroid/app/AlertDialog$Builder;Z)V

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    const v2, 0x7f0a0485

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mFromMyFiles:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->checkMyfiles()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mShowEmptyDialog:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->setStorageDialog(Landroid/app/AlertDialog$Builder;Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->setEmptyDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_1
.end method

.method private getSmartManagerPkgName()Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v3, "com.samsung.android.sm"

    invoke-interface {v0, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setEmptyDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a02f4

    new-instance v1, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$4;-><init>(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private setStorageDialog(Landroid/app/AlertDialog$Builder;Z)V
    .locals 9

    const v8, 0x7f0a03fb

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_1

    sget-boolean v3, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->USE_LOW_STORAGE_MODE:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    const v6, 0x7f0a042e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v0, 0x7f0a042e

    :goto_1
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;

    invoke-direct {v3, p0, p2}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;Z)V

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-boolean v3, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->USE_LOW_STORAGE_MODE:Z

    if-eqz v3, :cond_3

    const v2, 0x7f0a02f4

    :goto_2
    new-instance v3, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$3;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$3;-><init>(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)V

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    const v4, 0x7f0a012a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->USE_LOW_STORAGE_MODE:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    const v6, 0x7f0a028a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const v0, 0x7f0a028a

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    const v4, 0x7f0a0129

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const v2, 0x7f0a0080

    goto :goto_2
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
