.class public Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PeopleItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final FEATURE_IS_NOS:Z

.field private final FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

.field private final FEATURE_USE_NEW_MEMBER_LIST:Z

.field private mContext:Landroid/content/Context;

.field private mIconTextView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mIsEmptyContactImg:Z

.field private mNameView:Landroid/widget/TextView;

.field private mSmsIconView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewEventMemberListView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_USE_NEW_MEMBER_LIST:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportPhotoIdOpenTheme:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_IS_NOS:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIsEmptyContactImg:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getViewLayout(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f120251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f120253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f120252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f1001e3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v0, 0x7f120254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mSmsIconView:Landroid/widget/TextView;

    return-void
.end method

.method private setContactImage(Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b07f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIsEmptyContactImg:Z

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/sec/samsung/gallery/util/ContactPhotoUtil;->getSenderShapeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_USE_NEW_MEMBER_LIST:Z

    if-eqz v4, :cond_2

    const v4, 0x7f020081

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v4, 0x7f02007e

    goto :goto_1

    :cond_3
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIsEmptyContactImg:Z

    invoke-static {v0, v2, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getShapeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2
.end method

.method private setContactName(Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_USE_NEW_MEMBER_LIST:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIsEmptyContactImg:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/sec/samsung/gallery/util/ContactPhotoUtil;->getPhotoMaskingShape(I)I

    move-result v2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v2, 0x7f02012d

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mIconTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v7, 0x7f040103

    invoke-virtual {v1, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    :goto_0
    const v7, 0x7f120250

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_2

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->getViewLayout(Landroid/view/View;)V

    invoke-direct {p0, v4, p1}, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->setContactImage(Ljava/lang/String;I)V

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, p1}, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->setContactName(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mSmsIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_USE_NEW_MEMBER_LIST:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->FEATURE_IS_NOS:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mSmsIconView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0202d5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const v8, 0x7f0b037b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v7, 0x7f0b037c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0b023f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v3, v7, v8, v10, v10}, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->setMarginsRelative(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mSmsIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_2
    return-object v6

    :cond_1
    move-object v6, p2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->mSmsIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
