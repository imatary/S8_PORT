.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;
.super Ljava/lang/Object;
.source "SharedFriendsListActionbarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

.field final synthetic val$numberOfSelectedContact:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->val$numberOfSelectedContact:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->val$numberOfSelectedContact:I

    add-int/lit8 v9, v9, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mNumberOfSelectedContact:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$502(I)I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)I

    move-result v9

    if-gtz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$800(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)I

    move-result v10

    const-string/jumbo v11, "max_member"

    invoke-static {v9, v10, v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    # setter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$602(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;I)I

    :cond_0
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)I

    move-result v5

    :goto_0
    if-eqz v3, :cond_3

    iget v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->val$numberOfSelectedContact:I

    add-int/lit8 v6, v9, 0x1

    :goto_1
    const v9, 0x7f0a03cf

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v9, 0x7f0a02ed

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMenu:Landroid/view/Menu;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$1000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/view/Menu;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mChannelId:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$800(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->isEventOwner()Z

    move-result v9

    if-eqz v9, :cond_4

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mNumberOfSelectedContact:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$500()I

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)I

    move-result v10

    if-ge v9, v10, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMenu:Landroid/view/Menu;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$1000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/view/Menu;

    move-result-object v9

    const v10, 0x7f1202d5

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->val$numberOfSelectedContact:I

    add-int/lit8 v5, v9, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mLimitAddMember:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)I

    move-result v6

    goto/16 :goto_1

    :cond_4
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->mMenu:Landroid/view/Menu;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$1000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/view/Menu;

    move-result-object v9

    const v10, 0x7f1202d5

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v9, "ShredFrndLstActnbarNrml"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
