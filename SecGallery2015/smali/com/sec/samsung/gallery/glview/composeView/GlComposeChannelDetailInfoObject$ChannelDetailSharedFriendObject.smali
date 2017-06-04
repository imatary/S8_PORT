.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelDetailInfoObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelDetailSharedFriendObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-direct {p0, p2, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setSupportRtl(Z)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setSupportButtonShape(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->resetLayout()V

    return-void
.end method

.method private drawSharedFriendObject(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b02b2

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b02b5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b03df

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f100214

    invoke-static/range {v15 .. v16}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b02b0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/16 v15, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v6, v15}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f020128

    invoke-static/range {v15 .. v16}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-boolean v15, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v15, :cond_3

    const/16 v15, 0xb4

    invoke-virtual {v6, v3, v15}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    :goto_1
    invoke-virtual {v6, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v15, v0, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/4 v15, 0x3

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v15, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v15

    add-int/2addr v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b03dd

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    add-int v2, v15, v16

    const/16 v15, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b02b7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-static {v15}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v15, "ar"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string/jumbo v15, "fa"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->sharedContactSize()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    :goto_2
    if-nez v11, :cond_6

    int-to-float v15, v14

    invoke-static {v9, v15, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v11

    const/4 v15, 0x3

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v15

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v13, v2, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v15, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_4
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v15

    add-int/2addr v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b03de

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    add-int v2, v15, v16

    const/16 v15, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v10, :cond_8

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v10, v15}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    sget-object v15, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v15}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f020124

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v15 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v8, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v15, v0, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/4 v15, 0x3

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v15, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_6
    return-object p1

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    invoke-static {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->sharedContactSize()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v15

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v11, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f020125

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v15 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v15, v0, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto :goto_6
.end method

.method private resetLayout()V
    .locals 13

    const/4 v9, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->getFocusBorderVisible()Z

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0b02b6

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0b02b9

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v8, v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mWidthViewRatio:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v10

    mul-float/2addr v10, v7

    add-float/2addr v8, v10

    int-to-float v10, v4

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mWidthViewRatio:F
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    div-float/2addr v8, v12

    neg-float v5, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v8

    div-float/2addr v8, v12

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleHeight:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleStartTopMarginPixel:F
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateHeight:F
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v11

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateTopMarginPixel:F
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v11

    add-float/2addr v10, v11

    sub-float v6, v8, v10

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mWidthViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v8

    mul-float/2addr v8, v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateHeight:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v10

    invoke-virtual {p0, v8, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setSize(FF)V

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setPos(FFF)V

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->getWidth(Z)F

    move-result v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mWidthViewRatio:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v10

    div-float/2addr v8, v10

    float-to-int v3, v8

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->getHeight(Z)F

    move-result v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v10

    div-float/2addr v8, v10

    float-to-int v2, v8

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->drawSharedFriendObject(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v8, v3, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setUseTouchRippleEvent(Z)V

    return-void

    :cond_1
    move v8, v9

    goto :goto_0
.end method


# virtual methods
.method public drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 7

    const/16 v6, 0xc

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_2

    if-nez v0, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v2, 0x32

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method
