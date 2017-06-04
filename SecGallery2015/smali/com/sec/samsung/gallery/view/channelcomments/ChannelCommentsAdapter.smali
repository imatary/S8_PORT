.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;
.super Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;
.source "ChannelCommentsAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;,
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;,
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;,
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentModelListener;
    }
.end annotation


# static fields
.field private static final MENU_DELETE:I = 0x0

.field private static final MENU_EDIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CommentsAdapter"


# instance fields
.field private final mContentObserver:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;

.field private mCurrentTime:J

.field private final mIsHost:Z

.field private mModelListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentModelListener;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;IILjava/lang/String;ZLjava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;)V

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mIsHost:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mContentObserver:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mUpdateHandler:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoadListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoadListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;Lcom/sec/samsung/gallery/view/channelcomments/Comment;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->checkMenuType(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->removeData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->updateCurrentTime()V

    return-void
.end method

.method private addData(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    check-cast v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->addData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->updateCurrentTime()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->notifyItemInserted(I)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mContentObserver:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->onChange(Z)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkMenuType(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getSocialType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->isMyProfile(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mIsHost:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeData(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->removeData(I)V

    return-void
.end method

.method private updateCurrentTime()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mCurrentTime:J

    return-void
.end method

.method private updateData(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    check-cast v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->updateData(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->notifyItemChanged(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->updateCurrentTime()V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mContentObserver:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->onChange(Z)V

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method disableDeleteCommentForBixby(I)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->checkMenuType(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method disableEditCommentSendForBixby(I)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->checkMenuType(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method editData(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mModelListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentModelListener;

    invoke-interface {v1, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentModelListener;->onEditItemStart(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V

    return-void
.end method

.method getComment(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v0

    return-object v0
.end method

.method getCommentForBixby(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getCount()I

    move-result v0

    return v0
.end method

.method isMyProfile(I)Z
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->COMMENT_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

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

.method public onAddEnd(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->addData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "CommentsAdapter"

    const-string/jumbo v1, "fail to add comment"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    move-object v1, p1

    check-cast v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->getItemCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CommentsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong position, position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v2, p2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "CommentsAdapter"

    const-string/jumbo v3, "null at position"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->bind(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V

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

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    const v2, 0x7f04003a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onEditEnd(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->updateData(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "CommentsAdapter"

    const-string/jumbo v1, "fail to edit comment"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mContentObserver:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->unregister()V

    return-void
.end method

.method onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mContentObserver:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->register()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->updateCurrentTime()V

    return-void
.end method

.method setModelListener(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentModelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mModelListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentModelListener;

    return-void
.end method
