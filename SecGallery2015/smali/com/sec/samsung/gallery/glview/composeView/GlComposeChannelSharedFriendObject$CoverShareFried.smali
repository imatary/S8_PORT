.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSharedFriendObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverShareFried"
.end annotation


# instance fields
.field private mIsDefaultBtn:Z

.field private final mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mSharedContact:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ZLcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIsDefaultBtn:Z

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setReuseObj(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIndex:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIsDefaultBtn:Z

    iput-object p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mSharedContact:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIsDefaultBtn:Z

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setUseTouchEvent(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setCanvasMixRatio(F)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mSharedContact:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->resetLayout()V

    return-void
.end method

.method private drawShareFriendIcon(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b006f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIndex:I

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v5, :cond_2

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIsDefaultBtn:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mSharedContact:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mSharedContact:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mIsMyProfile:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f02007e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-virtual {v5, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v5, v11, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIndex:I

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v5, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    return-object p1

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mSharedContact:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v8, v8, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    if-nez v8, :cond_4

    const/4 v0, 0x0

    :goto_2
    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mSharedContact:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v9, v9, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v8, 0x1

    invoke-static {v0, v2, v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v1, v8, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->sharedContactSize()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020129

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b029c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100072

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->sharedContactSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v10, v8, v10, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v4, v11, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v8, 0x3e8

    invoke-virtual {v5, v4, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_3
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100113

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    :cond_7
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020127

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3
.end method

.method private resetLayout()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v1, v5

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v5, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->drawShareFriendIcon(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->getFocusBorderVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlImageView;Z)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIsDefaultBtn:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIndex:I

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    div-float/2addr v5, v9

    neg-float v5, v5

    invoke-virtual {v2, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v6, v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    :goto_1
    invoke-virtual {p0, v4, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setPos(FFF)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setSize(FF)V

    return-void

    :cond_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIndex:I

    int-to-float v5, v5

    invoke-virtual {v2, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v6

    add-float v3, v5, v6

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    div-float/2addr v5, v9

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float v4, v5, v6

    goto :goto_1
.end method


# virtual methods
.method public drawBorder(Lcom/sec/android/gallery3d/glcore/GlImageView;Z)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_3

    if-nez v0, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v2, 0x1e

    add-int/lit8 v4, v2, 0x1e

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method
