.class public Lcom/sec/samsung/gallery/drawer/Group;
.super Ljava/lang/Object;
.source "Group.java"


# static fields
.field private static final NO_NEED_TITLE:I = -0x1


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/drawer/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleItem:Lcom/sec/samsung/gallery/drawer/DrawerItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/Group;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/Group;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v0, -0x1

    invoke-direct {p0, v0, p2}, Lcom/sec/samsung/gallery/drawer/Group;->initGroup(ILcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;)V

    return-void
.end method

.method private initGroup(ILcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;)V
    .locals 6

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/Group;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/drawer/DrawerItemTitle;->createGroupTitleItems(ILjava/lang/String;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/Group;->mTitleItem:Lcom/sec/samsung/gallery/drawer/DrawerItem;

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/Group;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v2

    const v3, 0x7f0a0443

    const v4, 0x7f0201bf

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->createDefaultItem(IIILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/Group;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v2

    const v3, 0x7f0a043f

    const v4, 0x7f0201ba

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefault;->createDefaultItem(IIILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/Group;->mTitleItem:Lcom/sec/samsung/gallery/drawer/DrawerItem;

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/sec/samsung/gallery/drawer/DrawerItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/Group;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChild(I)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/Group;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/DrawerItem;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/Group;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitleItem()Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/Group;->mTitleItem:Lcom/sec/samsung/gallery/drawer/DrawerItem;

    return-object v0
.end method

.method public removeChildren()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/Group;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
