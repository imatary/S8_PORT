.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$1;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->onDecodeFinished(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->cancelProgressDialog()V

    return-void
.end method
