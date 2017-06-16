.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$13;
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


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onOk()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    return-void
.end method

.method public onOther(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
