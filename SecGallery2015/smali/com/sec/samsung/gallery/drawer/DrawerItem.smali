.class public abstract Lcom/sec/samsung/gallery/drawer/DrawerItem;
.super Ljava/lang/Object;
.source "DrawerItem.java"


# static fields
.field private static final EMPTY_ITEM:Ljava/lang/String; = "EMPTY_ITEM"

.field private static final TAG:Ljava/lang/String; = "DrawerItem"


# instance fields
.field mContentType:Ljava/lang/String;

.field private final mGroupType:I

.field mIconRes:I

.field private mIsGroupFirstChild:Z

.field mMediaSetPath:Ljava/lang/String;

.field private mName:Ljava/lang/CharSequence;

.field mNameStringId:I

.field private mbIsGroupNameItem:Z


# direct methods
.method constructor <init>(IILcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIconRes:I

    iput v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mNameStringId:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mbIsGroupNameItem:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIsGroupFirstChild:Z

    iput p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mGroupType:I

    iput p2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mNameStringId:I

    if-nez p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mbIsGroupNameItem:Z

    :cond_0
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Lcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIconRes:I

    iput v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mNameStringId:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mbIsGroupNameItem:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIsGroupFirstChild:Z

    iput p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mGroupType:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mName:Ljava/lang/CharSequence;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mbIsGroupNameItem:Z

    :cond_0
    return-void
.end method


# virtual methods
.method getContentType(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DrawerItem"

    const-string/jumbo v4, "Failed to get intent content type!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method getFilterType(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;
    .locals 2

    if-eqz p1, :cond_2

    const-string/jumbo v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "*/*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE_AND_VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    goto :goto_0
.end method

.method getFilterTypeToString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mContentType:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "image"

    goto :goto_0
.end method

.method public getGroupType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mGroupType:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mNameStringId:I

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mNameStringId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mName:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mName:Ljava/lang/CharSequence;

    return-object v0

    :cond_2
    const-string/jumbo v0, "EMPTY_ITEM"

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getNameStringId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mNameStringId:I

    return v0
.end method

.method public isGroupFirstItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIsGroupFirstChild:Z

    return v0
.end method

.method public isGroupNameItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mbIsGroupNameItem:Z

    return v0
.end method

.method public abstract selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
.end method

.method public setGroupFirstItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIsGroupFirstChild:Z

    return-void
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 3

    if-nez p1, :cond_1

    const-string/jumbo v0, "DrawerItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imageView is NULL. mName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , mNameStringId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mNameStringId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIconRes:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIconRes:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0200bc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method setIconId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItem;->mIconRes:I

    return-void
.end method

.method setMediaFilterType(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentMediaFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    return-void
.end method
