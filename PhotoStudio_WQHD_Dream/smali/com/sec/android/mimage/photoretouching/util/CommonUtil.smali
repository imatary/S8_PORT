.class public Lcom/sec/android/mimage/photoretouching/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_CommonUtil"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget v1, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadItemInfoLabel(Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getIconForPermission(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->loadItemInfoLabel(Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v7, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;

    invoke-direct {v5, p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;-><init>(Lcom/sec/android/mimage/photoretouching/util/CommonUtil;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public populateDialogue()Landroid/app/AlertDialog$Builder;
    .locals 17

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    const v14, 0x1030132

    invoke-direct {v3, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v13, "layout_inflater"

    invoke-virtual {v3, v13}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v14, 0x7f0300a5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0e03ca

    invoke-virtual {v13, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v6, v14, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v13, 0x7f0e03cb

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070331

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070070

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    const-string v13, "%s"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    const/4 v14, 0x0

    aget-char v13, v13, v14

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIndianChar(C)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "%s"

    invoke-virtual {v4, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const v13, 0x7f0e03cc

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v13, 0x7f0e03cd

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v13, "android.permission-group.STORAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->getIconForPermission(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v13, v11, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v11, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    return-object v2

    :cond_2
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public populateDialogue(Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 17

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    const v14, 0x1030132

    invoke-direct {v3, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v13, "layout_inflater"

    invoke-virtual {v3, v13}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v14, 0x7f0300a5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0e03ca

    invoke-virtual {v13, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v6, v14, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v13, 0x7f0e03cb

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070331

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070070

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    const-string v13, "%s"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    const/4 v14, 0x0

    aget-char v13, v13, v14

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIndianChar(C)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "%s"

    invoke-virtual {v4, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const v13, 0x7f0e03cc

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v13, 0x7f0e03cd

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->getIconForPermission(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v13, v11, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v11, Lcom/sec/android/mimage/photoretouching/util/CommonUtil$StorageIconInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    return-object v2

    :cond_2
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public populateLabelDialogue()Landroid/app/AlertDialog$Builder;
    .locals 6

    const v5, 0x7f0e00e7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00b8

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f070036

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabletModel()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const v4, 0x7f030045

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    return-object v0

    :cond_1
    const v4, 0x7f030044

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method
