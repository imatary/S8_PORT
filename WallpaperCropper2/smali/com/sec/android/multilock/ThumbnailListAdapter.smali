.class public Lcom/sec/android/multilock/ThumbnailListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ThumbnailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/multilock/ThumbnailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mResId:I

.field private mThumbnailInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/multilock/ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/multilock/ThumbnailInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mThumbnailInfoList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mResId:I

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mThumbnailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mThumbnailInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mThumbnailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mCurrentPosition:I

    return v0
.end method

.method public getItem(I)Lcom/sec/android/multilock/ThumbnailInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mThumbnailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/multilock/ThumbnailInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/multilock/ThumbnailListAdapter;->getItem(I)Lcom/sec/android/multilock/ThumbnailInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mResId:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/multilock/ThumbnailListAdapter;->getItem(I)Lcom/sec/android/multilock/ThumbnailInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/multilock/ThumbnailInfo;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    const v0, 0x7f0c0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/sec/android/multilock/ThumbnailInfo;->isSelected()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object p2

    :cond_1
    invoke-static {}, Lcom/sec/android/multilock/ThumbnailInfo;->getBlackBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;

    invoke-direct {v2}, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setCurrentPosition(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mThumbnailInfoList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/multilock/ThumbnailInfo;

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mThumbnailInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/multilock/ThumbnailInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/multilock/ThumbnailInfo;->setIsSelected(Z)V

    :cond_1
    iput p1, p0, Lcom/sec/android/multilock/ThumbnailListAdapter;->mCurrentPosition:I

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/sec/android/multilock/ThumbnailInfo;->setIsSelected(Z)V

    invoke-virtual {v1}, Lcom/sec/android/multilock/ThumbnailInfo;->onClick()V

    invoke-virtual {p0}, Lcom/sec/android/multilock/ThumbnailListAdapter;->notifyDataSetChanged()V

    return-void
.end method
