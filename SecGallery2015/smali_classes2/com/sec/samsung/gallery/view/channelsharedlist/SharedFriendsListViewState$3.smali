.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$3;
.super Ljava/lang/Object;
.source "SharedFriendsListViewState.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->initListenersForContactListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsPenSelectionMode:Z
    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$902(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Z)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method
