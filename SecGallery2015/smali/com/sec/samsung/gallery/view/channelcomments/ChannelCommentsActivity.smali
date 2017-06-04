.class public Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;
.super Landroid/app/Activity;
.source "ChannelCommentsActivity.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;,
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;
    }
.end annotation


# static fields
.field private static final INVALID_COMMENT_INDEX:I = -0x1

.field public static final KEY_ARTICLE_ID:Ljava/lang/String; = "article_id"

.field public static final KEY_FILE_ID:Ljava/lang/String; = "file_id"

.field public static final KEY_IS_HOST:Ljava/lang/String; = "is_host"

.field public static final KEY_LIKE_VIEW:Ljava/lang/String; = "show_like_view"

.field private static final KEY_SCROLL_TO_POSITION:Ljava/lang/String; = "scroll_to"

.field public static final KEY_SHARED_ITEM_UNIQUE_PATH:Ljava/lang/String; = "shared_item_unique_path"

.field public static final KEY_SHOW_KEYBOARD:Ljava/lang/String; = "show_keyboard"

.field public static final KEY_SHOW_STATUS_BAR:Ljava/lang/String; = "show_status_bar"

.field private static final SCREEN_ID:Ljava/lang/String; = "224"

.field private static final TAG:Ljava/lang/String; = "CommentsActivity"


# instance fields
.field private mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

.field private final mBottomSheetCallback:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;

.field private mCommentIndexBixby:I

.field private mCommentsList:Landroid/support/v7/widget/RecyclerView;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mHelper:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

.field private mIsCommentEditView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mIsCommentEditView:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$1;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mBottomSheetCallback:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mHelper:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mIsCommentEditView:Z

    return p1
.end method

.method private checkDisableSelectCommentCase(Ljava/lang/String;I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->checkExistSelectOrderType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkExistSelectOrderType(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "latest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "oldest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "most latest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "most oldest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCommentsIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v2, "latest"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "most latest"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x42277079 -> :sswitch_0
        0x589e52c4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCommentsIndexUsingOrdinal(I)I
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentsList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    move-object v0, v4

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    if-le p1, v4, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    add-int v4, v3, p1

    add-int/lit8 v2, v4, -0x1

    goto :goto_0
.end method

.method private handleCommentEditView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mHelper:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->getComment(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->editComment(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V

    const-string/jumbo v0, "StoryCommentsEditView"

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    return-void
.end method

.method private handleCommentsSend(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mHelper:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->sendComment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a07da

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v1, "Send"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private handleDelete()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentsList:Landroid/support/v7/widget/RecyclerView;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->getPopupWindow(I)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    move-result-object v0

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->showDeleteDialog(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a07db

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v3, "DeleteCommentsPopUp"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    return-void

    :cond_0
    const-string/jumbo v3, "CommentsActivity"

    const-string/jumbo v4, "viewHolder is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0512

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v3, "DeleteCommentsPopUp"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private handleDeleteEditComments(Ljava/lang/String;I)V
    .locals 5

    const v4, 0x7f0a07dd

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a07dc

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v1, "DeleteEdit"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->checkDisableSelectCommentCase(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v1, "DeleteEdit"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->disableDeleteCommentForBixby(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a07de

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v1, "DeleteEdit"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getCommentsIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    :cond_3
    const-string/jumbo v1, "DeleteEdit"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getCommentsIndexUsingOrdinal(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v1, "DeleteEdit"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private handleEditCommentsSend(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->disableEditCommentSendForBixby(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a07de

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v2, "DeleteEdit"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentIndexBixby:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->getCommentForBixby(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mHelper:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->editComment(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mHelper:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->sendComment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a07da

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v2, "Edit"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "CommentsActivity"

    const-string/jumbo v3, "there is a no comment"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a07d9

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v2, "DeleteCommentsPopUp"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method


# virtual methods
.method createCommentView(Landroid/content/Intent;Landroid/support/v7/widget/RecyclerView$LayoutManager;II)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->setContentView(I)V

    const-string/jumbo v0, "scroll_to"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    const-string/jumbo v1, "article_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "is_host"

    invoke-virtual {p1, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v1, "shared_item_unique_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;IILjava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$2;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->setModelListener(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentModelListener;)V

    const-string/jumbo v0, "show_keyboard"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_0
    :goto_0
    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    invoke-direct {v1, p0, v0, v8}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;Z)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mHelper:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    return-void

    :cond_1
    if-eq v7, v9, :cond_0

    invoke-virtual {p2, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    goto :goto_0
.end method

.method createLikeView(II)V
    .locals 1

    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->setContentView(I)V

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;II)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    return-void
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mIsCommentEditView:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StoryCommentsEditView"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "StoryComments"

    goto :goto_0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "224"

    return-object v0
.end method

.method init(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 4

    const v2, 0x7f1200a6

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentsList:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentsList:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mCommentsList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const v2, 0x7f1200a4

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mBottomSheetCallback:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->setBottomSheetCallback(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f0c00b4

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "show_like_view"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v5, "story_id"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "file_id"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->createLikeView(II)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->init(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const-string/jumbo v5, "show_status_bar"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->resetStatusBar(Z)V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/samsung/android/devicecog/gallery/DeviceCogChannelCommentsActivityListenerImpl;

    invoke-direct {v5, p0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogChannelCommentsActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v5, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelCommentsActivityDCHandler;

    invoke-direct {v5, p0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelCommentsActivityDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->createCommentView(Landroid/content/Intent;Landroid/support/v7/widget/RecyclerView$LayoutManager;II)V

    goto :goto_0
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "224"

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mAdapter:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->onResume()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_0
    return-void
.end method

.method resetStatusBar(Z)V
    .locals 2

    const/16 v1, 0x400

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method setCheckCommentEditView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mIsCommentEditView:Z

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    const-string/jumbo v6, "CommentsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Event update ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_COMMENTS_SEND:I

    if-ne v2, v6, :cond_1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->handleCommentsSend(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_DELETE_EDIT_COMMENT:I

    if-ne v2, v6, :cond_3

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, [Ljava/lang/Object;

    aget-object v4, v3, v5

    check-cast v4, Ljava/lang/String;

    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    aget-object v6, v3, v9

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_2
    invoke-direct {p0, v4, v5}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->handleDeleteEditComments(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_DELETE_COMMENT:I

    if-ne v2, v6, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->handleDelete()V

    goto :goto_0

    :cond_4
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EDIT_STORY_COMMENT_EDIT_DONE:I

    if-ne v2, v6, :cond_5

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->handleEditCommentsSend(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_COMMENT_EDIT_VIEW:I

    if-ne v2, v6, :cond_0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mIsCommentEditView:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->handleCommentEditView()V

    goto :goto_0
.end method
