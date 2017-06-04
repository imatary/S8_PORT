.class public Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;
.super Ljava/lang/Object;
.source "SlinkImageViewImageListener.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;


# instance fields
.field private final mErrorResource:I

.field private mImageLoaded:Z

.field private final mImageView:Landroid/widget/ImageView;

.field private final mLoadingResource:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    iput p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mLoadingResource:I

    iput p3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mErrorResource:I

    return-void
.end method

.method private hasImageLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onImageFailedToLoad()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->hasImageLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageLoaded:Z

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mErrorResource:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mErrorResource:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private setImageAndOrientation(Landroid/graphics/Bitmap;I)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageLoaded:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageLoaded:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onErrorResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->onImageFailedToLoad()V

    goto :goto_0
.end method

.method public onResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mErrorResource:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mLoadingResource:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getOrientation()I

    move-result v0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->setImageAndOrientation(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public updateImageContainer(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->cancelRequest()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
