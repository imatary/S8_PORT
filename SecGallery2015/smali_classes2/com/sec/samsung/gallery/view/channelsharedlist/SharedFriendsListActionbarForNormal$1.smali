.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$1;
.super Ljava/lang/Object;
.source "SharedFriendsListActionbarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const v3, 0x7f020046

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method
