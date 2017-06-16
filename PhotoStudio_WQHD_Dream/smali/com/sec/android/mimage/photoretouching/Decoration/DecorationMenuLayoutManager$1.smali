.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currposition:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_1

    const-string v0, "~Rakesh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->currposition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *--> IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->setState(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string v0, "~Rakesh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->currposition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *--> DRAGGING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "~Rakesh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->currposition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *--> SETTLING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    const-string v0, "~Rakesh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " positionOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->currposition:I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SELECT_STICKER_SCREEN:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SELECT_STICKER_SCREEN_SELECT_TAB_ID:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SELECT_STICKER_SCREEN_SELECT_TAB_EVENT_NAME:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->clearAllTabSelectedStates()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->scrollToSelectedPosition(I)V
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrTabPos:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$302(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x80002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
