.class public Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;
.super Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
.source "ComposeChannelItemAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelItemAdapter"


# instance fields
.field private final mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;

.field private mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSocialStoryView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSocialStoryDetailDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;)Lcom/sec/samsung/gallery/util/DimensionUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    return-object v0
.end method

.method private updateCommentCountView(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;II)I
    .locals 12

    const/16 v11, 0x194

    const/16 v10, 0x193

    const/4 v9, 0x2

    const/4 v2, 0x0

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v8, 0x7f0201ac

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->comments_footer_hint_text_color:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v7, v3, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v7, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_number_text_size:I

    int-to-float v7, v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget-object v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->comments:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    div-int/lit8 v8, p2, 0x4

    int-to-float v8, v8

    invoke-static {v4, v7, v8, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_number_text_size:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->comments_footer_hint_text_color:I

    invoke-static {v0, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v7, 0x3

    invoke-virtual {v1, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v7, v1, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    invoke-virtual {v7, v2, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    return v2

    :cond_1
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLastCommentView(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget-object p4, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->unknown:Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_2

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v8, 0x195

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_person_text_size:I

    int-to-float v7, v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v7, 0x0

    div-int/lit8 v8, p2, 0x2

    int-to-float v8, v8

    invoke-static {p4, v7, v8, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_person_text_size:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->comments_item_name_text_color:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v2, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v8, 0x195

    invoke-virtual {v7, v2, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v3

    add-int/2addr v4, v3

    :cond_2
    if-eqz p3, :cond_3

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v8, 0x196

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_text_size:I

    int-to-float v7, v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sub-int v7, p2, v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_v_h_gap:I

    sub-int v0, v7, v8

    const/4 v7, 0x0

    int-to-float v8, v0

    invoke-static {p3, v7, v8, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_text_size:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_text_color:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v8, 0x196

    invoke-virtual {v7, v1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_v_h_gap:I

    add-int/2addr v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v7, v7, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_v_h_gap:I

    add-int/2addr v4, v7

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    :cond_3
    iget-object v7, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_text_size:I

    invoke-virtual {v7, v4, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    return-void

    :cond_4
    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateLikeCountView(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;II)I
    .locals 8

    const/16 v7, 0x192

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v5, v5, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_number_text_size:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->likes:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    div-int/lit8 v6, p2, 0x4

    int-to-float v6, v6

    invoke-static {v2, v5, v6, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v5, v5, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_number_text_size:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v6, v6, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->comments_footer_hint_text_color:I

    invoke-static {v3, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget-object v5, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v5, v1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v6, v6, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    invoke-virtual {v5, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    return v4

    :cond_0
    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateOwnerInfoView(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;ILjava/lang/String;Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;II)V
    .locals 16

    const/4 v10, 0x0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget-object v0, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->unknown:Ljava/lang/String;

    move-object/from16 p3, v0

    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v12, :cond_2

    new-instance v12, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v12, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f02007e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v2, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    const/4 v3, 0x1

    invoke-static {v7, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mResources:Landroid/content/res/Resources;

    invoke-direct {v8, v1, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v2, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    invoke-virtual {v12, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v12, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v2, 0x190

    invoke-virtual {v1, v12, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    new-instance v1, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v5, v3, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;ILcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;)V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->startLoadOwnerThumbnail()V

    :cond_2
    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v1

    add-int/2addr v10, v1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_owner_name_text_size:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v13

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sub-int v1, p2, p5

    sub-int v1, v1, p6

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v2, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_v_h_gap:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v2, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    sub-int v9, v1, v2

    const/4 v1, 0x0

    int-to-float v2, v9

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2, v13}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v15

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_owner_name_text_size:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v2, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_text_color:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v15, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v2, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_v_h_gap:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v11, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v2, 0x191

    invoke-virtual {v1, v11, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_v_h_gap:I

    add-int/2addr v10, v1

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v1

    add-int/2addr v10, v1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget v2, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    invoke-virtual {v1, v10, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    return-void
.end method


# virtual methods
.method public onDrawSocialStoryInfoView(Lcom/sec/android/gallery3d/data/ChannelAlbum;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;I)V
    .locals 19

    if-eqz p2, :cond_1

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSocialInfo(I)Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getLikeByMe()I

    move-result v3

    move-object/from16 v0, p2

    iput v3, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeByMe:I

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getLikeCount()I

    move-result v15

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getCommentCount()I

    move-result v10

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getLatestCommentText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getSocialType()I

    move-result v3

    sget-object v4, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->COMMENT_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v11, 0x1

    :goto_0
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget-object v14, v3, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->me:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getOwnerInfo()Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    if-eqz v18, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mSocialDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget-object v6, v3, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->me:Ljava/lang/String;

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->updateLikeCountView(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;II)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v10}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->updateCommentCountView(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;II)I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->updateLastCommentView(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v3 .. v9}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->updateOwnerInfoView(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;ILjava/lang/String;Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;II)V

    :cond_1
    return-void

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getLatestCommentUser()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public updateSocialStoryViewInfo(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;I)V
    .locals 8

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v5, :cond_1

    :cond_0
    const-string/jumbo v5, "ChannelItemAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GetCommentViewInfo size error, pos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v5, p1

    if-eqz v0, :cond_2

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-lt p2, v5, :cond_4

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v5, "ChannelItemAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GetCommentViewInfo album is null, sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "ChannelItemAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GetCommentViewInfo position is over index, sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v3, v5, p2

    :cond_5
    if-nez v3, :cond_6

    const-string/jumbo v5, "ChannelItemAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GetCommentViewInfo mediaItem is null, pos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v2, v5, p2

    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSocialStoryView:Z

    if-eqz v5, :cond_7

    instance-of v5, v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getParentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v5, :cond_7

    check-cast v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getParentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v1, v2, p4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->onDrawSocialStoryInfoView(Lcom/sec/android/gallery3d/data/ChannelAlbum;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;I)V

    :cond_7
    iget v5, v2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeByMe:I

    iput v5, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLikeByMe:I

    iget-object v5, v2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v5, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v5, v2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v5, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v5, v2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v5, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v5, v2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v5, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "ChannelItemAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GetCommentViewInfo imageItem is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mediaSet is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", pos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
