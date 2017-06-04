.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showFloatingTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v9, 0x8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedShowFloatingTextView:Z
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$24500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$24600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    const v7, 0x7f1200d5

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$24700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    const v8, 0x7f120101

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15402(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/view/View;)Landroid/view/View;

    const-string/jumbo v1, ""

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "ar"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "fa"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getImageCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getVideoCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$24800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v8, 0x7f04006d

    const/4 v6, 0x0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v2, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v7, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15402(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/view/View;)Landroid/view/View;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f120103

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;
    invoke-static {v7, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDatePeriod:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$24900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f120106

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;
    invoke-static {v7, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15602(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f120109

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;
    invoke-static {v7, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15702(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f120105

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoIcon:Landroid/widget/ImageView;
    invoke-static {v7, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15802(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f120108

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoIcon:Landroid/widget/ImageView;
    invoke-static {v7, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15902(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f120107

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDotIcon:Landroid/widget/ImageView;
    invoke-static {v7, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16002(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDotIcon:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoIcon:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const/4 v7, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I
    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16102(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateFloatingViewBackground()V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getImageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getVideoCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDotIcon:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoIcon:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDatePeriod:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$24900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
