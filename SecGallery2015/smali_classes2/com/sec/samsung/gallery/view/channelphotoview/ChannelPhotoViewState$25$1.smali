.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->updateFloatingViewBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

.field final synthetic val$isUpdate:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->val$isUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v1, 0x7f120102

    const v4, 0x7f100074

    const v3, 0x7f100073

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDotIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->val$isUpdate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f100076

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDotIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I
    invoke-static {v0, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16102(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->val$isUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f100075

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$15900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDotIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I
    invoke-static {v0, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$16102(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I

    goto/16 :goto_0
.end method
