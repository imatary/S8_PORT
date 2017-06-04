.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "ChannelCommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentListPopupWindow"
.end annotation


# static fields
.field static final MENU_HOST:I = 0x1

.field static final MENU_MY_COMMENT:I


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;Landroid/content/Context;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;I)V
    .locals 4

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    const/4 v1, 0x0

    const v2, 0x10102d7

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    const v2, 0x1090003

    invoke-direct {p0, p4}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->getPopupMenu(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p3, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0506

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->setWidth(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->setModal(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->setVerticalOffset(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b051e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->setHorizontalOffset(I)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$1;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private getPopupMenu(I)[Ljava/lang/String;
    .locals 5

    const v4, 0x7f0a00e0

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method showDeleteDialog(I)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00e8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00e0

    new-instance v3, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$3;

    invoke-direct {v3, p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$3;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$2;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateMenu(I)V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    const v2, 0x1090003

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->getPopupMenu(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
