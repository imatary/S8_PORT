.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$3;
.super Ljava/lang/Object;
.source "SharedFriendsListActionbar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$3;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar$3;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->access$1300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->onEventSharingService(Landroid/content/Context;Z)V

    return-void
.end method
