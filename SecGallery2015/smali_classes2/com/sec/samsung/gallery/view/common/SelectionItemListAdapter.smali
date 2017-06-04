.class Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectionItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final FEATURE_IS_NOS:Z

.field private static final FEATURE_IS_TABLET:Z

.field private static final TAG:Ljava/lang/String; = "SelectionAdapter"

.field private static final TOUCH_EFFECT_RESIZE_RATIO:F = 0.02f


# instance fields
.field private counter:I

.field private final mCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

.field private mContext:Landroid/content/Context;

.field private final mIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->FEATURE_IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->FEATURE_IS_TABLET:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->counter:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->getCache()Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mPressedView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mPressedView:Landroid/view/View;

    return-object p1
.end method

.method private setSelectedViewPadding(II)V
    .locals 3

    move v0, p2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b036a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mPressedView:Landroid/view/View;

    invoke-virtual {v1, v0, p2, p2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 3

    const-string/jumbo v0, "SelectionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add:count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",map.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->counter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const-string/jumbo v0, "SelectionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add:finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",map.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "SelectionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addAll:count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",map.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->counter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->counter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    const-string/jumbo v1, "SelectionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addAll:finish:count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",map.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clear()V
    .locals 3

    const-string/jumbo v0, "SelectionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear:Map size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->counter:I

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    const-string/jumbo v0, "SelectionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear:finish:Map size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getItemId(I)J
    .locals 6

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SelectionAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getItem returned null, position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SelectionAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index out of bounds!! position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    if-nez p2, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v13, 0x7f0400f4

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v13, v8, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v13, :cond_7

    move-object v7, v8

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    const v13, 0x7f12023b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v13, 0x7f12023c

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0b036b

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v13, 0x7f0b0362

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPaddingRelative(IIII)V

    sget-boolean v13, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->FEATURE_IS_NOS:Z

    if-eqz v13, :cond_1

    sget-boolean v13, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v13, :cond_5

    const v13, 0x7f0b03c0

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v13, 0x7f0b0362

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b03c0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    if-nez p1, :cond_0

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v13, 0x7f0b0362

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    const v13, 0x7f0b03c0

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :cond_1
    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    invoke-virtual {v13, v7}, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-nez v13, :cond_6

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v13, "SelectionAdapter"

    const-string/jumbo v14, "abnormal case, no bitmap in cache"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    invoke-virtual {v13, v7}, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v3, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v3, v13, v8, v5}, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Landroid/widget/ImageView;)V

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    invoke-virtual {v13, v7, v3}, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0356

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v13, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;)V

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_3
    new-instance v13, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;I)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v12

    :cond_4
    move-object/from16 v12, p2

    goto/16 :goto_0

    :cond_5
    if-nez p1, :cond_1

    const v13, 0x7f0b036a

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v13, "SelectionAdapter"

    const-string/jumbo v14, "abnormal case : mediaobj should be MediaItem"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 3

    const-string/jumbo v0, "SelectionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove:count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",map.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    const-string/jumbo v0, "SelectionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove:finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",map.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method public setTouchEffectSwitch(Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mPressedView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mPressedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->mPressedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->setSelectedViewPadding(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->setSelectedViewPadding(II)V

    goto :goto_0
.end method
