.class public Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;
.super Ljava/lang/Object;
.source "PermissionsRequestRationaleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field private static final TAG:Ljava/lang/String; = "PermissionsReqDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFinishActivity:Z

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

.field private final mPermissions:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 2
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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mIsFinishActivity:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissions:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mIsFinishActivity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mIsFinishActivity:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initPermissionInfo()V
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v5, "PermissionsReqDialog"

    const-string/jumbo v6, "initPermissionInfos(), packageManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionInfos:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "PermissionsReqDialog"

    const-string/jumbo v6, "PackageManager NameNotFoundException "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v5, "PermissionsReqDialog"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    iget-object v7, v2, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initPopupText()V
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionRationaleView:Landroid/view/View;

    const v5, 0x7f120229

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0013

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x21

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRequestPermissionRationale()V
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f0400e5

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionRationaleView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionRationaleView:Landroid/view/View;

    const v4, 0x7f12022a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0400e6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mRequestList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    return-void
.end method

.method private loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v2, "PermissionsReqDialog"

    const-string/jumbo v3, "Couldn\'t get resource"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "PermissionsReqDialog"

    const-string/jumbo v1, "loadItemInfoIcon(), PackageItemInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showPermissionRationaleDialog()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->initPermissionInfo()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->initRequestPermissionRationale()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->initPopupText()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionRationaleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
