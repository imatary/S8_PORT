.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->reloadGPUThumbs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
