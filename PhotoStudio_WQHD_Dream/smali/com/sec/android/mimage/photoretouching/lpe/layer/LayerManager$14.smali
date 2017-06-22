.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$14;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$view:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$14;->val$view:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onOk()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v1, -0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$14;->val$view:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerClicked(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    return-void
.end method

.method public onOther(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
