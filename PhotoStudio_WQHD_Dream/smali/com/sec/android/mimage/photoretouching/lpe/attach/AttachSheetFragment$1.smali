.class Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$1;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPageScrollStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPageScrolled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iput p1, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getCurrentCategory()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_ID:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_CAMERA_ID:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_CAMERA_EVENT_NAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->hideSwipeInfo(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_ID:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_GALLERY_ID:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_GALLERY_EVENT_NAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
