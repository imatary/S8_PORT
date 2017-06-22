.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2202(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->clearHistory()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1502(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
