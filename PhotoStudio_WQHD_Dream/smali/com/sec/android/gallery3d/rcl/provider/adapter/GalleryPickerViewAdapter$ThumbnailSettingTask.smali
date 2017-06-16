.class Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;
.super Landroid/os/AsyncTask;
.source "GalleryPickerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailSettingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

.field private mResolutionType:I

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

.field final synthetic this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;III)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mResolutionType:I

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mThumbnailHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mThumbnailWidth:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    iput-object p2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iput-object p3, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    iput p4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mThumbnailHeight:I

    iput p5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mThumbnailWidth:I

    iput p6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mResolutionType:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    iget v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mThumbnailHeight:I

    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mThumbnailWidth:I

    iget v3, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mResolutionType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getThumbnail(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget v1, v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mediaKey:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->expandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$color;->gallery_picker_view_bg_color:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->isBroken()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$500(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->videoIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->isThumbExist()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$600(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mMediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mIsFirstPosition:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # setter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mFirstBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$702(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->expandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8fe

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button_text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$color;->gallery_picker_gallery_button_bg_color_for_grace:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->mViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$color;->gallery_picker_gallery_button_bg_color:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
