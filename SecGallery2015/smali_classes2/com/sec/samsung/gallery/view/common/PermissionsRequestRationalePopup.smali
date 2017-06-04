.class public Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;
.super Ljava/lang/Object;
.source "PermissionsRequestRationalePopup.java"


# static fields
.field private static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field private static final TAG:Ljava/lang/String; = "PerReqRationalePopup"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPermission:Ljava/lang/String;

.field private mPermissionDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method private getMessage()Ljava/lang/String;
    .locals 7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->STORAGE_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7f0a0325

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0372

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    sget-object v3, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->LOCATION_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0a0322

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CAMERA_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v2, 0x7f0a043b

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v2, 0x7f0a0321

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->SMS_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v2, 0x7f0a0324

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->MEMO_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermission:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v2, 0x7f0a0323

    goto :goto_0

    :cond_5
    const v2, 0x7f0a0496

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showPermissionRationaleDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$1;-><init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$2;-><init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
