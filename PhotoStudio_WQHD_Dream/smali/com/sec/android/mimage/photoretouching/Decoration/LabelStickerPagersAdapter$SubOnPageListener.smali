.class Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;
.super Ljava/lang/Object;
.source "LabelStickerPagersAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubOnPageListener"
.end annotation


# instance fields
.field private stickerCategory:I

.field stickerSubViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->stickerCategory:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->stickerSubViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageScrollStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageScrolled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onPageSelected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->stickerCategory:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    add-int/lit8 v4, p1, 0xa

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->stickerSubViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->stickerSubViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->stickerSubViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_0

    const v3, 0x7f0e0203

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;->computeVerticalScrollOffset()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->stickerCategory:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    add-int/lit8 v4, p1, 0x14

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->stickerCategory:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    add-int/lit8 v4, p1, 0x1e

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I
    invoke-static {v3, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_2

    :cond_6
    return-void
.end method
