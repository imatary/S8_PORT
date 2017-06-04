.class public Lcom/sec/samsung/gallery/drawer/DrawerItemTitle;
.super Lcom/sec/samsung/gallery/drawer/DrawerItem;
.source "DrawerItemTitle.java"


# direct methods
.method private constructor <init>(ILjava/lang/CharSequence;Lcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/drawer/DrawerItem;-><init>(ILjava/lang/CharSequence;Lcom/sec/samsung/gallery/core/TabTagType;)V

    return-void
.end method

.method public static createGroupTitleItems(ILjava/lang/String;)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerItemTitle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/samsung/gallery/drawer/DrawerItemTitle;-><init>(ILjava/lang/CharSequence;Lcom/sec/samsung/gallery/core/TabTagType;)V

    return-object v0
.end method


# virtual methods
.method public selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
    .locals 0

    return-void
.end method
