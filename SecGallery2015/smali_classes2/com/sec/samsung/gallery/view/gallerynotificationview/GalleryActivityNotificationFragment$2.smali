.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;
.super Ljava/lang/Object;
.source "GalleryActivityNotificationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->startChannelPhotoViewState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

.field final synthetic val$storyId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;->val$storyId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const v2, 0x7f02011a

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mParentView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v4, "/channel/eventnotificationalbumset"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_MEDIA_ITEM_PATH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/channel/channelalbum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;->val$storyId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
