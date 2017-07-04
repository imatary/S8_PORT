.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;
.super Ljava/lang/Object;
.source "SharedFriendsListActionbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

.field final synthetic val$numberOfItemsInAlbum:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->val$numberOfItemsInAlbum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    iget v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->val$numberOfItemsInAlbum:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$802(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;I)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)I

    move-result v6

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$1000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$1100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)I

    move-result v7

    const-string/jumbo v8, "max_member"

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$902(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;I)I

    :cond_0
    const v6, 0x7f0a03cf

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f0a02ed

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->val$numberOfItemsInAlbum:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$1200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "ShredFrindLstActnbar"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
