.class public Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;
.super Ljava/lang/Object;
.source "PermissionsRequestRationalePopup.java"


# static fields
.field private static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field private static final TAG:Ljava/lang/String; = "PermissionsRequestPopup"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPermission:Ljava/lang/String;

.field private mPermissionDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    return-void
.end method

.method private getMessage()Ljava/lang/String;
    .locals 9

    const v8, 0x7f06001b

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showPermissionRationaleDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$1;-><init>(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$2;-><init>(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
