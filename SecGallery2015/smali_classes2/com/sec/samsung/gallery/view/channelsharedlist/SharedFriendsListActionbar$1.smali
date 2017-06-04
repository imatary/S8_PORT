.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;
.super Ljava/lang/Object;
.source "SharedFriendsListActionbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$500(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
