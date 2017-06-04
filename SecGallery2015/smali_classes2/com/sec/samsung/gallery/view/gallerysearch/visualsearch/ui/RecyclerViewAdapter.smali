.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final FEATURE_IS_NOS:Z

.field private static final FEATURE_IS_TABLET:Z

.field private static final FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

.field private static final FEATURE_USE_SERVER_BASED_SEARCH:Z

.field private static final NUM_COLUMN_LAND:I

.field private static final NUM_COLUMN_PORT:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mImageThumbSize:I

.field private mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

.field private mIsExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_IS_TABLET:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->NUM_COLUMN_PORT:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->NUM_COLUMN_LAND:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseServerBasedSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mIsExpanded:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mDataSet:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getColumnCount()I
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->NUM_COLUMN_LAND:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->NUM_COLUMN_PORT:I

    goto :goto_0
.end method

.method private getTranslatedWord(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    move-object v3, v2

    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string/jumbo v4, "Location"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_2
    const-string/jumbo v4, "-\n"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto :goto_2
.end method

.method private updateImage(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mImageThumbSize:I

    iget v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mImageThumbSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->loadImage(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Landroid/widget/ImageView;)V

    :cond_3
    iget-object v1, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTitle(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "People"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "Related people"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getPersonName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->FEATURE_IS_NOS:Z

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->getTranslatedWord(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getLocationType()I

    move-result v4

    sget-object v5, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->POI:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImagePoi:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f100260

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImagePoi:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v3, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImagePoi:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v3, p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const v4, 0x800013

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getIsExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mIsExpanded:Z

    return v0
.end method

.method public getItemCount()I
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mIsExpanded:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->getColumnCount()I

    move-result v0

    if-le v1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->onBindViewHolder(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mDataSet:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->updateTitle(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->updateImage(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setImageThumbSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mImageThumbSize:I

    return-void
.end method

.method public setImageWorker(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->mIsExpanded:Z

    return-void
.end method
