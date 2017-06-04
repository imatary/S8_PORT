.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;
.super Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;
.source "ChannelLikeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$LikeViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;II)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;->mUpdateHandler:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;->mDataLoadListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;->mDataLoadListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;-><init>(Landroid/content/Context;IILcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getCount()I

    move-result v0

    return v0
.end method

.method isMyProfile(I)Z
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    move-object v1, p1

    check-cast v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$LikeViewHolder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v2, p2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$LikeViewHolder;->bind(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$LikeViewHolder;

    const v2, 0x7f04003c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$LikeViewHolder;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;Landroid/view/View;)V

    return-object v1
.end method
