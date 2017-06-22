.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$fileUri:Landroid/net/Uri;

.field final synthetic val$is360ImageType:Z


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;ZLjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->val$is360ImageType:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->val$fileUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->val$is360ImageType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose360(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;->val$fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose(Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0
.end method
