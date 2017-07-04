.class public Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;
.super Landroid/widget/BaseAdapter;
.source "NearbyMediaSetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NearbyMediaSetAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTitleViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->calItemTitleViewWidth()V

    return-void
.end method


# virtual methods
.method public calItemTitleViewWidth()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0239

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mItemTitleViewWidth:I

    const-string/jumbo v2, "NearbyMediaSetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calItemTitleViewWidth - screenSize.x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", iconViewWidth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    const-string/jumbo v1, "NearbyMediaSetAdapter"

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

    const-string/jumbo v0, "NearbyMediaSetAdapter"

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mItemList:Ljava/util/List;

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
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "NearbyMediaSetAdapter"

    const-string/jumbo v3, "getView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0400d2

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;-><init>(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$1;)V

    const v2, 0x7f1201f6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->access$102(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f1201f5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->access$202(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->access$100(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->access$100(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mItemTitleViewWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;->access$200(Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->setIcon(Landroid/widget/ImageView;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "NearbyMediaSetAdapter"

    const-string/jumbo v1, "setItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->notifyDataSetChanged()V

    return-void
.end method
