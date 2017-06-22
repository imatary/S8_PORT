.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22$2;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->onOk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
