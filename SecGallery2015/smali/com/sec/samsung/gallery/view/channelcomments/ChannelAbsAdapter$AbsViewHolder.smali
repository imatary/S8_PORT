.class abstract Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChannelAbsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AbsViewHolder"
.end annotation


# instance fields
.field final mImage:Landroid/widget/TextView;

.field final mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f12009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->mImage:Landroid/widget/TextView;

    const v0, 0x7f1200a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->mName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method abstract bind(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V
.end method

.method setContactImageAndName(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getSocialType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->isMyProfile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0256

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    const v7, 0x7f0a0496

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->mImage:Landroid/widget/TextView;

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->mImage:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    const v8, 0x7f020078

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getUserName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const-string/jumbo v6, "ChannelAbsAdapter"

    const-string/jumbo v7, "Phone number is null! error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-static {v6, v5}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0519

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v0, v6, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-static {v6, v0, v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->mImage:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;->mImage:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
