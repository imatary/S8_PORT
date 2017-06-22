.class Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager$1;
.super Ljava/lang/Object;
.source "StickerFragment.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Landroid/view/View;Landroid/support/v4/view/ViewPager;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

.field final synthetic val$this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager$1;->val$this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->requiredStickerPages:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->setMainTab(I)V

    sput p1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentStickerCategory:I

    return-void
.end method
