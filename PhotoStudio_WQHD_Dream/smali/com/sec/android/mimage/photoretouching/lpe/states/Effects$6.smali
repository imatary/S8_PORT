.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->reload()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
