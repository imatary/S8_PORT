.class Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;
.super Ljava/lang/Object;
.source "LabelStickerPagersAdapter.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;Landroid/view/View;Landroid/support/v4/view/ViewPager;[III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

.field final synthetic val$selectedPosition:I

.field final synthetic val$this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->val$this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->val$selectedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->access$400(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->val$selectedPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    add-int/lit8 v1, p1, 0xa

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->val$selectedPosition:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    add-int/lit8 v1, p1, 0x14

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->val$selectedPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    add-int/lit8 v1, p1, 0x1e

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I

    goto :goto_0
.end method
