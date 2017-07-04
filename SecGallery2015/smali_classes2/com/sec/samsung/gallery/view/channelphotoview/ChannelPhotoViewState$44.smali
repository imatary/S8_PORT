.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showShareEventDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v9, 0x1

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$19200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$19400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->turnOn(Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$19600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v6

    const-string/jumbo v7, "max_member"

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$19700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    const-string/jumbo v6, "max_channel_member"

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :cond_1
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$19800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    if-lt v4, v0, :cond_6

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$19900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    const v7, 0x7f0a0074

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    const v8, 0x7f0a0075

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$19500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->turnOff(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    const v7, 0x7f0a0474

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    const v8, 0x7f0a0475

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    const-string/jumbo v6, "sharing_setting_on"

    invoke-static {v5, v6, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    add-int/lit8 v3, v0, -0x1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isServiceOn()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v2, v9}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOn(Z)V

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {v5, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V

    goto :goto_1

    :cond_8
    new-instance v5, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44$1;

    invoke-direct {v5, p0, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44$1;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;I)V

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setRegisterOnListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->registerWithProgress()V

    goto :goto_1
.end method
