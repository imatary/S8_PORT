.class Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;
.super Ljava/lang/Object;
.source "Beautify.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$000(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$000(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCursiveSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$200(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mSustenanceSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$300(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mDummySeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$400(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mModulationSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$500(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$000(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # getter for: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->mCurrentButtonIndex:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$100(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/Beautify$1;->this$0:Lcom/samsung/android/sdk/pen/pen/preload/Beautify;

    # invokes: Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->setBeautifyType(I)V
    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/pen/preload/Beautify;->access$600(Lcom/samsung/android/sdk/pen/pen/preload/Beautify;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
