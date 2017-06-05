.class public Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;
.super Ljava/lang/Object;
.source "PermissionsRequestRationaleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field private static final TAG:Ljava/lang/String; = "Cropper2_PermissionsDialog"


# instance fields
.field private mAddGooglePhotoString:Z

.field private mContext:Landroid/content/Context;

.field private mIsGooglePhotos:Z

.field private mPermissionDialog:Landroid/app/AlertDialog;

.field private mPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionRationaleView:Landroid/view/View;

.field private mPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mAddGooglePhotoString:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mAddGooglePhotoString:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mAddGooglePhotoString:Z

    iput-object p1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissions:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mIsGooglePhotos:Z

    return-void
.end method

.method private initPermissionInfo()V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "Cropper2_PermissionsDialog"

    const-string/jumbo v1, "initPermissionInfos(), packageManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissions:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_PermissionsDialog"

    const-string/jumbo v3, "PackageManager NameNotFoundException "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mIsGooglePhotos:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/PermissionGroupInfo;->icon:I

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private initPopupText()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionRationaleView:Landroid/view/View;

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/high16 v4, 0x7f060000

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    const/16 v2, 0x21

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRequestPermissionRationale()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040016

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionRationaleView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionRationaleView:Landroid/view/View;

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    const v4, 0x7f040017

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;-><init>(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    return-void
.end method

.method private loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_PermissionsDialog"

    const-string/jumbo v2, "Couldn\'t get resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "Cropper2_PermissionsDialog"

    const-string/jumbo v1, "loadItemInfoIcon(), PackageItemInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mAddGooglePhotoString:Z

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showPermissionRationaleDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->initPermissionInfo()V

    invoke-direct {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->initRequestPermissionRationale()V

    invoke-direct {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->initPopupText()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionRationaleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$1;-><init>(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$2;-><init>(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
