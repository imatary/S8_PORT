.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$2;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getInitIndex()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v2, v0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
