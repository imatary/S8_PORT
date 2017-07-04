.class public Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;
.super Lcom/sec/samsung/gallery/drawer/DrawerItem;
.source "DrawerItemSLink.java"


# static fields
.field private static final PREFKEY_ALLOW_MOBILE_NETWORK:Ljava/lang/String; = "allow_mobile_network"

.field private static final TAG:Ljava/lang/String; = "DrawerItemSLink"


# instance fields
.field private mIconDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mNetworkMode:Ljava/lang/String;

.field private final mStorageId:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p5}, Lcom/sec/samsung/gallery/drawer/DrawerItem;-><init>(ILjava/lang/CharSequence;Lcom/sec/samsung/gallery/core/TabTagType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNetworkMode:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mMediaSetPath:Ljava/lang/String;

    iput p4, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mStorageId:I

    iput-object p6, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNetworkMode:Ljava/lang/String;

    return-void
.end method

.method public static createSLinkItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 7

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/String;)V

    return-object v0
.end method

.method private isSLinkDevice(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "DrawerItemSLink"

    const-string/jumbo v1, "isSLinkDevice : mediaSetPath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "slink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getMediaSetPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mMediaSetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNetworkMode:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mStorageId:I

    return v0
.end method

.method public selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
    .locals 14

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    iget v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNameStringId:I

    const v2, 0x7f0a0068

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a03dc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0068

    new-instance v4, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$1;

    invoke-direct {v4, p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$1;-><init>(Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNameStringId:I

    const v2, 0x7f0a088c

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->createHowToUseViewIntent()Landroid/content/Intent;

    move-result-object v11

    :try_start_0
    invoke-virtual {p1, v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    const-string/jumbo v1, "DrawerItemSLink"

    const-string/jumbo v2, "Activity Not Found !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNameStringId:I

    const v2, 0x7f0a0385

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    move/from16 v0, p3

    invoke-virtual {v5, v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    move/from16 v0, p3

    invoke-virtual {v5, v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v1, 0x7f12004f

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "allow_mobile_network"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string/jumbo v1, "DrawerItemSLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sLinkSelected : mediaSetPath = [ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mMediaSetPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mMediaSetPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->isSLinkDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v7, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0246

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0a02f4

    new-instance v1, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;

    move-object v2, p0

    move-object v4, p1

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;-><init>(Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;Landroid/widget/CheckBox;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;Z)V

    invoke-virtual {v12, v13, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    move/from16 v0, p3

    invoke-virtual {v5, v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    move/from16 v0, p3

    invoke-virtual {v5, v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mMediaSetPath:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v1, v2, v8}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mIconRes:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->setIcon(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mIconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_2

    :try_start_0
    sget-object v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->LIGHT:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mStorageId:I

    int-to-long v2, v2

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;->LARGE:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v8, 0x0

    const v9, 0x101009e

    aput v9, v6, v8

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;->getDeviceIcon(Landroid/content/Context;JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mIconDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mIconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0200bc

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v1, "DrawerItemSLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trouble getting device icon for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mStorageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setNetworkMode(Landroid/widget/TextView;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNetworkMode:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WIFI"

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNetworkMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "WLAN"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "WIFI"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "OFF"

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->mNetworkMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "OFF"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "3G/4G"

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
