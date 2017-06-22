.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setStickersDataAndExit(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$previewRect:Landroid/graphics/RectF;

.field final synthetic val$stickerFilesInfo:Ljava/util/ArrayList;

.field final synthetic val$stickersInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->val$stickersInfo:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->val$stickerFilesInfo:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->val$previewRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "stickersInfo"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->val$stickersInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "stickerFilesInfo"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->val$stickerFilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "previewRect"

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->val$previewRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->moveToFront(I)V

    sput v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
