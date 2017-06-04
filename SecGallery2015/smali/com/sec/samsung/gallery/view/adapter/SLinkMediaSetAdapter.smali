.class public Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;
.super Landroid/widget/BaseAdapter;
.source "SLinkMediaSetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SLinkMediaSetAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTitleViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->calItemTitleViewWidth()V

    return-void
.end method


# virtual methods
.method public calItemTitleViewWidth()V
    .locals 6

    const v5, 0x7f0b0239

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0238

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b023d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mItemTitleViewWidth:I

    const-string/jumbo v3, "SLinkMediaSetAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calItemTitleViewWidth - screenSize.x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", iconViewWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", networkModeViewWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    const-string/jumbo v1, "SLinkMediaSetAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "SLinkMediaSetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getItem ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    const-string/jumbo v3, "SLinkMediaSetAdapter"

    const-string/jumbo v4, "getView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0400ff

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;-><init>(Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$1;)V

    const v3, 0x7f1201f6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    const v3, 0x7f1201f5

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    const v3, 0x7f120248

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->networkView:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mItemList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mItemTitleViewWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 v11, 0x0

    :try_start_0
    sget-object v7, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->LIGHT:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getStorageId()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;->LARGE:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v14, 0x0

    const v15, 0x101009e

    aput v15, v8, v14

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;->getDeviceIcon(Landroid/content/Context;JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v12, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v12

    :goto_1
    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    const v4, 0x7f0200bc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getNetworkMode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->networkView:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->setNetworkMode(Landroid/widget/TextView;)V

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getNetworkMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f1000cb

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_2
    return-object p2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v3, "SLinkMediaSetAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trouble getting device icon for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getStorageId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    const v4, 0x7f0200bd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, v10, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter$ViewHolder;->networkView:Landroid/widget/TextView;

    const v4, 0x7f0200bf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 4

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getNetworkMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getNetworkMode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "SLinkMediaSetAdapter"

    const-string/jumbo v1, "setItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->notifyDataSetChanged()V

    return-void
.end method
