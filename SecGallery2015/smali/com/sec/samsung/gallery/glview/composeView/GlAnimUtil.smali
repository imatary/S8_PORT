.class public Lcom/sec/samsung/gallery/glview/composeView/GlAnimUtil;
.super Ljava/lang/Object;
.source "GlAnimUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundColorForAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsChannelPhotoView:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1000ac

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f1000ab

    goto :goto_0
.end method
