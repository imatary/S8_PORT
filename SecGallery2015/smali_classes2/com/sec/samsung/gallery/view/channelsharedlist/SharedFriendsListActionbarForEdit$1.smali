.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;
.super Ljava/lang/Object;
.source "SharedFriendsListActionbarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->access$000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->access$100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->access$200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->val$numberOfItemsSelected:I

    # setter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mQuantitySelectedAlbum:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->access$402(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;I)I

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->val$numberOfItemsSelected:I

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->access$500(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->val$numberOfItemsSelected:I

    # invokes: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
